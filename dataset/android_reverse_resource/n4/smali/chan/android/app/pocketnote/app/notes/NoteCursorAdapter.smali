.class Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "NoteCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final COLOR_GREY_OUT:I


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private layoutId:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5b99e15387f77ca1L    # 1.8369841427477021E133

    const-string v2, "chan/android/app/pocketnote/app/notes/NoteCursorAdapter"

    const/16 v3, 0x1b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    const-string v1, "#777777"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->COLOR_GREY_OUT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    aput-boolean v2, v0, v3

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 29
    iput p2, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->layoutId:I

    .line 30
    aput-boolean v2, v0, v2

    return-void
.end method

.method private setParentBackground(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v1

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .local v0, "sdk":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    const/16 v2, 0x16

    aput-boolean v3, v1, v2

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x17

    aput-boolean v3, v1, v2

    .line 71
    :goto_0
    const/16 v2, 0x19

    aput-boolean v3, v1, v2

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x18

    aput-boolean v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v4

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;

    const/4 v1, 0x5

    aput-boolean v9, v4, v1

    .line 43
    invoke-static {p3}, Lchan/android/app/pocketnote/app/Note;->fromCursor(Landroid/database/Cursor;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v5

    const/4 v1, 0x6

    aput-boolean v9, v4, v1

    .line 44
    iget-object v1, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x7

    aput-boolean v9, v4, v1

    .line 45
    iget-object v1, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    aput-boolean v9, v4, v1

    .line 48
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lorg/joda/time/DateTime;-><init>(J)V

    const/16 v6, 0x9

    aput-boolean v9, v4, v6

    .line 49
    iget-object v6, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v8

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v1

    invoke-static {v8, v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    aput-boolean v9, v4, v1

    .line 51
    iget-object v1, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->color:Landroid/view/View;

    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0xb

    aput-boolean v9, v4, v1

    .line 52
    iget-object v6, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    aput-boolean v9, v4, v1

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0xe

    aput-boolean v9, v4, v1

    .line 53
    iget-object v1, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->reminder:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lchan/android/app/pocketnote/util/TextUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0xf

    aput-boolean v9, v4, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x11

    aput-boolean v9, v4, v1

    .line 54
    invoke-virtual {v5}, Lchan/android/app/pocketnote/app/Note;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x12

    aput-boolean v9, v4, v1

    .line 55
    iget-object v0, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->parent:Landroid/view/View;

    const v1, 0x7f0200e8

    invoke-direct {p0, p2, v0, v1}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->setParentBackground(Landroid/content/Context;Landroid/view/View;I)V

    const/16 v0, 0x13

    aput-boolean v9, v4, v0

    .line 61
    :goto_2
    const/16 v0, 0x15

    aput-boolean v9, v4, v0

    return-void

    .line 52
    :cond_0
    const/16 v1, 0xd

    aput-boolean v9, v4, v1

    move v1, v3

    goto :goto_0

    .line 53
    :cond_1
    const/16 v3, 0x10

    aput-boolean v9, v4, v3

    move v3, v2

    goto :goto_1

    .line 57
    :cond_2
    iget-object v0, v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->parent:Landroid/view/View;

    const v1, 0x7f0200e9

    invoke-direct {p0, p2, v0, v1}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->setParentBackground(Landroid/content/Context;Landroid/view/View;I)V

    const/16 v0, 0x14

    aput-boolean v9, v4, v0

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;->layoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 35
    new-instance v2, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    return-object v1
.end method
