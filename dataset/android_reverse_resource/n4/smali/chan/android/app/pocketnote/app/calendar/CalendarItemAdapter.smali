.class Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final COLOR_BACKGROUND_AVAILABLE:I

.field private static final COLOR_BACKGROUND_UNAVAILABLE:I

.field private static final COLOR_TEXT_AVAILABLE:I

.field private static final COLOR_TEXT_SATURDAY:I

.field private static final COLOR_TEXT_SUNDAY:I

.field private static final COLOR_TEXT_UNAVAILABLE:I

.field private static final TODAY:Ljava/util/Calendar;

.field private static calendar:Ljava/util/Calendar;


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/calendar/CalendarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x495310e645d9d24bL    # 1.7007452525564288E45

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarItemAdapter"

    const/16 v3, 0x38

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_BACKGROUND_AVAILABLE:I

    const/16 v1, 0x31

    aput-boolean v2, v0, v1

    .line 23
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_AVAILABLE:I

    const/16 v1, 0x32

    aput-boolean v2, v0, v1

    .line 24
    const-string v1, "#d3d3d3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_BACKGROUND_UNAVAILABLE:I

    const/16 v1, 0x33

    aput-boolean v2, v0, v1

    .line 25
    const-string v1, "#a8a8a8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_UNAVAILABLE:I

    const/16 v1, 0x34

    aput-boolean v2, v0, v1

    .line 26
    const-string v1, "#006887"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_SATURDAY:I

    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    .line 27
    const-string v1, "#ad2e11"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_SUNDAY:I

    const/16 v1, 0x36

    aput-boolean v2, v0, v1

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->TODAY:Ljava/util/Calendar;

    const/16 v1, 0x37

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/calendar/CalendarItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->items:Ljava/util/List;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->calendar:Ljava/util/Calendar;

    .line 37
    aput-boolean v2, v0, v2

    return-void
.end method

.method private isSaturday(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 111
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/16 v0, 0x21

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x23

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x22

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private isSunday(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 107
    if-ne p1, v1, :cond_0

    const/16 v0, 0x1e

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x20

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x1f

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private isToday(III)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 115
    sget-object v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->TODAY:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0x24

    aput-boolean v2, v3, v4

    .line 116
    sget-object v4, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->TODAY:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x25

    aput-boolean v2, v3, v5

    .line 117
    sget-object v5, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->TODAY:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 118
    .local v0, "y":I
    if-eq p1, v1, :cond_0

    const/16 v1, 0x26

    aput-boolean v2, v3, v1

    :goto_0
    const/4 v1, 0x0

    const/16 v4, 0x2a

    aput-boolean v2, v3, v4

    :goto_1
    const/16 v4, 0x2b

    aput-boolean v2, v3, v4

    return v1

    :cond_0
    if-eq p2, v4, :cond_1

    const/16 v1, 0x27

    aput-boolean v2, v3, v1

    goto :goto_0

    :cond_1
    if-eq p3, v0, :cond_2

    const/16 v1, 0x28

    aput-boolean v2, v3, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1
.end method

.method private setViewBackground(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .local v0, "sdk":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    const/16 v2, 0x2c

    aput-boolean v3, v1, v2

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x2d

    aput-boolean v3, v1, v2

    .line 129
    :goto_0
    const/16 v2, 0x2f

    aput-boolean v3, v1, v2

    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x2e

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItem(I)Lchan/android/app/pocketnote/app/calendar/CalendarItem;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 55
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/calendar/CalendarItem;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    const-wide/16 v2, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->$jacocoInit()[Z

    move-result-object v3

    .line 66
    if-nez p2, :cond_0

    aput-boolean v7, v3, v6

    .line 67
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x6

    aput-boolean v7, v3, v2

    .line 68
    const v2, 0x7f030017

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    aput-boolean v7, v3, v8

    .line 69
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/16 v2, 0x8

    aput-boolean v7, v3, v2

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    const/16 v2, 0x9

    aput-boolean v7, v3, v2

    move-object v2, v1

    .line 75
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/calendar/CalendarItem;

    const/16 v4, 0xb

    aput-boolean v7, v3, v4

    .line 76
    sget-object v4, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getDay()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    aput-boolean v7, v3, v4

    .line 77
    sget-object v4, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getMonth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    aput-boolean v7, v3, v4

    .line 78
    sget-object v4, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getYear()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    aput-boolean v7, v3, v4

    .line 81
    sget-object v4, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xf

    aput-boolean v7, v3, v5

    .line 83
    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->isIgnored()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x10

    aput-boolean v7, v3, v4

    .line 84
    iget-object v4, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->day:Landroid/widget/TextView;

    sget v5, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_UNAVAILABLE:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    aput-boolean v7, v3, v4

    .line 85
    iget-object v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->context:Landroid/content/Context;

    iget-object v5, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->parent:Landroid/widget/LinearLayout;

    const v6, 0x7f02007e

    invoke-direct {p0, v4, v5, v6}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->setViewBackground(Landroid/content/Context;Landroid/view/View;I)V

    const/16 v4, 0x12

    aput-boolean v7, v3, v4

    .line 97
    :goto_1
    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getDay()I

    move-result v4

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getMonth()I

    move-result v5

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getYear()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->isToday(III)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x19

    aput-boolean v7, v3, v4

    .line 101
    :goto_2
    iget-object v4, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->day:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x1c

    aput-boolean v7, v3, v4

    .line 102
    iget-object v2, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->container:Lchan/android/app/pocketnote/app/calendar/BucketNoteView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getNotes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->setNoteColors(Ljava/util/List;)V

    .line 103
    const/16 v1, 0x1d

    aput-boolean v7, v3, v1

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;

    const/16 v2, 0xa

    aput-boolean v7, v3, v2

    move-object v2, v1

    move-object v0, p2

    goto/16 :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, v4}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->isSunday(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x13

    aput-boolean v7, v3, v4

    .line 88
    iget-object v4, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->day:Landroid/widget/TextView;

    sget v5, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_SUNDAY:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x14

    aput-boolean v7, v3, v4

    .line 94
    :goto_3
    iget-object v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->context:Landroid/content/Context;

    iget-object v5, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->parent:Landroid/widget/LinearLayout;

    const v6, 0x7f02007d

    invoke-direct {p0, v4, v5, v6}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->setViewBackground(Landroid/content/Context;Landroid/view/View;I)V

    const/16 v4, 0x18

    aput-boolean v7, v3, v4

    goto :goto_1

    .line 89
    :cond_2
    invoke-direct {p0, v4}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->isSaturday(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x15

    aput-boolean v7, v3, v4

    .line 90
    iget-object v4, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->day:Landroid/widget/TextView;

    sget v5, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_SATURDAY:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x16

    aput-boolean v7, v3, v4

    goto :goto_3

    .line 92
    :cond_3
    iget-object v4, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->day:Landroid/widget/TextView;

    sget v5, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->COLOR_TEXT_AVAILABLE:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x17

    aput-boolean v7, v3, v4

    goto :goto_3

    .line 97
    :cond_4
    const/16 v4, 0x1a

    aput-boolean v7, v3, v4

    .line 98
    iget-object v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->context:Landroid/content/Context;

    iget-object v5, v2, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->parent:Landroid/widget/LinearLayout;

    const v6, 0x7f02007f

    invoke-direct {p0, v4, v5, v6}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;->setViewBackground(Landroid/content/Context;Landroid/view/View;I)V

    const/16 v4, 0x1b

    aput-boolean v7, v3, v4

    goto/16 :goto_2
.end method
