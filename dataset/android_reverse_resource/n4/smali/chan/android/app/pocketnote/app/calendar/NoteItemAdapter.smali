.class Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoteItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final COLOR_GREY_OUT:I


# instance fields
.field private context:Landroid/content/Context;

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xb5e5310cf032f50L    # -6.479457991810202E253

    const-string v2, "chan/android/app/pocketnote/app/calendar/NoteItemAdapter"

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    const-string v1, "#777777"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->COLOR_GREY_OUT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

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
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notes:Ljava/util/List;

    .line 33
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private setParentBackground(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .local v0, "sdk":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    const/16 v2, 0x1c

    aput-boolean v3, v1, v2

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x1d

    aput-boolean v3, v1, v2

    .line 94
    :goto_0
    const/16 v2, 0x1f

    aput-boolean v3, v1, v2

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x1e

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getItem(I)Lchan/android/app/pocketnote/app/Note;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 42
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/Note;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/Note;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getNotes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notes:Ljava/util/List;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v6

    .line 61
    if-nez p2, :cond_0

    const/4 v1, 0x6

    aput-boolean v10, v6, v1

    .line 62
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x7

    aput-boolean v10, v6, v2

    .line 63
    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "convertView":Landroid/view/View;
    const/16 v1, 0x8

    aput-boolean v10, v6, v1

    .line 64
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/16 v2, 0x9

    aput-boolean v10, v6, v2

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    const/16 v2, 0xa

    aput-boolean v10, v6, v2

    move-object v2, v1

    .line 69
    .end local v0    # "convertView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/Note;

    const/16 v3, 0xc

    aput-boolean v10, v6, v3

    .line 70
    iget-object v3, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xd

    aput-boolean v10, v6, v3

    .line 71
    iget-object v3, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xe

    aput-boolean v10, v6, v3

    .line 73
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Lorg/joda/time/DateTime;-><init>(J)V

    const/16 v7, 0xf

    aput-boolean v10, v6, v7

    .line 74
    iget-object v7, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v9

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v3

    invoke-static {v9, v3}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableTime(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x10

    aput-boolean v10, v6, v3

    .line 75
    iget-object v3, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->color:Landroid/view/View;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v3, 0x11

    aput-boolean v10, v6, v3

    .line 76
    iget-object v7, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x12

    aput-boolean v10, v6, v3

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v3, 0x14

    aput-boolean v10, v6, v3

    .line 77
    iget-object v3, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->reminder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lchan/android/app/pocketnote/util/TextUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v4, 0x15

    aput-boolean v10, v6, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v3, 0x17

    aput-boolean v10, v6, v3

    .line 78
    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x18

    aput-boolean v10, v6, v1

    .line 79
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->context:Landroid/content/Context;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->parent:Landroid/view/View;

    const v3, 0x7f0200e8

    invoke-direct {p0, v1, v2, v3}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->setParentBackground(Landroid/content/Context;Landroid/view/View;I)V

    const/16 v1, 0x19

    aput-boolean v10, v6, v1

    .line 83
    :goto_3
    const/16 v1, 0x1b

    aput-boolean v10, v6, v1

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;

    const/16 v2, 0xb

    aput-boolean v10, v6, v2

    move-object v2, v1

    move-object v0, p2

    goto/16 :goto_0

    .line 76
    :cond_1
    const/16 v3, 0x13

    aput-boolean v10, v6, v3

    move v3, v5

    goto :goto_1

    .line 77
    :cond_2
    const/16 v5, 0x16

    aput-boolean v10, v6, v5

    move v5, v4

    goto :goto_2

    .line 81
    :cond_3
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->context:Landroid/content/Context;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter$ViewHolder;->parent:Landroid/view/View;

    const v3, 0x7f0200e9

    invoke-direct {p0, v1, v2, v3}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->setParentBackground(Landroid/content/Context;Landroid/view/View;I)V

    const/16 v1, 0x1a

    aput-boolean v10, v6, v1

    goto :goto_3
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notes:Ljava/util/List;

    .line 56
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
