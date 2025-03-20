.class public Lchan/android/app/pocketnote/app/calendar/CalendarFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final FLIPPER_CALENDAR:I = 0x0

.field private static final FLIPPER_NOT_FOUND:I = 0x2

.field private static final FLIPPER_SEARCH:I = 0x1

.field private static final MAX_DAY_SPOTS:I = 0x2a

.field private static final MONTH_DESCRIPTION:[Ljava/lang/String;

.field private static final REQUEST_CODE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private adapter:Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;

.field public adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

.field private calendarItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/calendar/CalendarItem;",
            ">;"
        }
    .end annotation
.end field

.field private gridViewDays:Landroid/widget/GridView;

.field private listViewSearch:Landroid/widget/ListView;

.field private month:I

.field private noteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;>;"
        }
    .end annotation
.end field

.field private relativeLayoutRoot:Landroid/widget/RelativeLayout;

.field private savedSearchQuery:Ljava/lang/String;

.field private swipeListener:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

.field private textViewMonth:Landroid/widget/TextView;

.field private viewFlipper:Landroid/widget/ViewFlipper;

.field private year:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7e086fc227406b3cL    # -3.518544757895105E-299

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment"

    const/16 v3, 0x99

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "January"

    aput-object v3, v1, v2

    const-string v2, "February"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "March"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "April"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "May"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "June"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "July"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "August"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "September"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "October"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "November"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "December"

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->MONTH_DESCRIPTION:[Ljava/lang/String;

    const/16 v1, 0x98

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$002(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->savedSearchQuery:Ljava/lang/String;

    const/16 v1, 0x8c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;Ljava/lang/String;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->refreshSearchList(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$1000(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->showConfirmDialog(I)V

    const/16 v1, 0x96

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1100(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILjava/util/List;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->displayListDialog(IIILjava/util/List;)V

    const/16 v1, 0x97

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)Landroid/widget/ViewFlipper;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/16 v2, 0x8e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    const/16 v2, 0x8f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$400(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    const/16 v2, 0x90

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$500(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->refresh(II)V

    const/16 v1, 0x91

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$600(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->launchEditNoteActivity(IIILchan/android/app/pocketnote/app/Note;)V

    const/16 v1, 0x92

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$700(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->goToNextMonthYear()V

    const/16 v1, 0x93

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$800(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->goToPreviousMonthYear()V

    const/16 v1, 0x94

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$900(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->calendarItems:Ljava/util/List;

    const/16 v2, 0x95

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private buildMonthView(II)V
    .locals 17

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v11

    .line 320
    move-object/from16 v0, p0

    iget-object v10, v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->calendarItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    const/16 v10, 0x56

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    .line 323
    new-instance v10, Ljava/util/GregorianCalendar;

    const/4 v12, 0x1

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-direct {v10, v0, v1, v12}, Ljava/util/GregorianCalendar;-><init>(III)V

    const/16 v12, 0x57

    const/4 v13, 0x1

    aput-boolean v13, v11, v12

    .line 324
    const/4 v12, 0x7

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0x58

    const/4 v14, 0x1

    aput-boolean v14, v11, v13

    .line 325
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v13

    const/16 v14, 0x59

    const/4 v15, 0x1

    aput-boolean v15, v11, v14

    .line 328
    invoke-direct/range {p0 .. p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->previousMonth(I)I

    move-result v7

    .line 329
    .local v7, "previousMonth":I
    if-eqz p1, :cond_0

    const/16 v14, 0x5a

    const/4 v15, 0x1

    aput-boolean v15, v11, v14

    .line 332
    :goto_0
    const/4 v14, 0x2

    invoke-virtual {v10, v14, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0x5d

    const/4 v15, 0x1

    aput-boolean v15, v11, v14

    .line 335
    const/4 v14, 0x5

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    const/16 v15, 0x5e

    const/16 v16, 0x1

    aput-boolean v16, v11, v15

    .line 338
    invoke-direct/range {p0 .. p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->nextMonth(I)I

    move-result v5

    .line 339
    .local v5, "nextMonth":I
    const/16 v15, 0xb

    move/from16 v0, p1

    if-eq v0, v15, :cond_1

    const/16 v15, 0x5f

    const/16 v16, 0x1

    aput-boolean v16, v11, v15

    .line 342
    :goto_1
    const/4 v15, 0x2

    invoke-virtual {v10, v15, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0x62

    const/16 v16, 0x1

    aput-boolean v16, v11, v15

    .line 345
    const/4 v15, 0x5

    invoke-virtual {v10, v15}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    .line 347
    .local v2, "firstDayInNextMonth":I
    rsub-int/lit8 v9, v13, 0x2a

    .line 348
    .local v9, "totalSpots":I
    add-int/lit8 v8, v12, -0x1

    .line 349
    .local v8, "previousMonthSpots":I
    sub-int v6, v9, v8

    .line 352
    .local v6, "nextMonthSpots":I
    sub-int v10, v14, v8

    add-int/lit8 v4, v10, 0x1

    const/16 v10, 0x63

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    :goto_2
    if-gt v4, v14, :cond_2

    const/16 v10, 0x64

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    .line 353
    move-object/from16 v0, p0

    iget-object v10, v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->calendarItems:Ljava/util/List;

    new-instance v12, Lchan/android/app/pocketnote/app/calendar/CalendarItem;

    const/4 v15, 0x1

    move/from16 v0, p2

    invoke-direct {v12, v4, v7, v0, v15}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;-><init>(IIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v4, v4, 0x1

    .local v4, "i":I
    const/16 v10, 0x65

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    goto :goto_2

    .line 329
    .end local v2    # "firstDayInNextMonth":I
    .end local v4    # "i":I
    .end local v5    # "nextMonth":I
    .end local v6    # "nextMonthSpots":I
    .end local v8    # "previousMonthSpots":I
    .end local v9    # "totalSpots":I
    :cond_0
    const/16 v14, 0x5b

    const/4 v15, 0x1

    aput-boolean v15, v11, v14

    .line 330
    const/4 v14, 0x1

    add-int/lit8 v15, p2, -0x1

    invoke-virtual {v10, v14, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v14, 0x5c

    const/4 v15, 0x1

    aput-boolean v15, v11, v14

    goto :goto_0

    .line 339
    .restart local v5    # "nextMonth":I
    :cond_1
    const/16 v15, 0x60

    const/16 v16, 0x1

    aput-boolean v16, v11, v15

    .line 340
    const/4 v15, 0x1

    add-int/lit8 v16, p2, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0x61

    const/16 v16, 0x1

    aput-boolean v16, v11, v15

    goto :goto_1

    .line 357
    .restart local v2    # "firstDayInNextMonth":I
    .restart local v6    # "nextMonthSpots":I
    .restart local v8    # "previousMonthSpots":I
    .restart local v9    # "totalSpots":I
    :cond_2
    const/4 v4, 0x0

    const/16 v10, 0x66

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    :goto_3
    if-ge v4, v13, :cond_3

    const/16 v10, 0x67

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    .line 358
    new-instance v12, Lchan/android/app/pocketnote/app/calendar/CalendarItem;

    add-int/lit8 v10, v4, 0x1

    const/4 v14, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v10, v0, v1, v14}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;-><init>(IIIZ)V

    const/16 v10, 0x68

    const/4 v14, 0x1

    aput-boolean v14, v11, v10

    .line 359
    move-object/from16 v0, p0

    iget-object v10, v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->noteMap:Ljava/util/Map;

    invoke-virtual {v12}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getDay()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v12, v10}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->setNotes(Ljava/util/List;)V

    const/16 v10, 0x69

    const/4 v14, 0x1

    aput-boolean v14, v11, v10

    .line 360
    move-object/from16 v0, p0

    iget-object v10, v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->calendarItems:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v4, v4, 0x1

    .restart local v4    # "i":I
    const/16 v10, 0x6a

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    goto :goto_3

    .line 364
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x0

    const/16 v10, 0x6b

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    move v3, v2

    .end local v2    # "firstDayInNextMonth":I
    .local v3, "firstDayInNextMonth":I
    :goto_4
    if-ge v4, v6, :cond_4

    const/16 v10, 0x6c

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    .line 365
    move-object/from16 v0, p0

    iget-object v10, v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->calendarItems:Ljava/util/List;

    new-instance v12, Lchan/android/app/pocketnote/app/calendar/CalendarItem;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "firstDayInNextMonth":I
    .restart local v2    # "firstDayInNextMonth":I
    const/4 v13, 0x1

    move/from16 v0, p2

    invoke-direct {v12, v3, v5, v0, v13}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;-><init>(IIIZ)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v4, v4, 0x1

    .restart local v4    # "i":I
    const/16 v10, 0x6d

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    move v3, v2

    .end local v2    # "firstDayInNextMonth":I
    .restart local v3    # "firstDayInNextMonth":I
    goto :goto_4

    .line 367
    .end local v4    # "i":I
    :cond_4
    const/16 v10, 0x6e

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    return-void
.end method

.method private buildSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    aput-boolean v3, v0, v2

    .line 118
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultAlphabetSortColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    aput-boolean v3, v0, v2

    .line 119
    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    aput-boolean v3, v0, v2

    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    aput-boolean v3, v0, v2

    .line 121
    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    aput-boolean v3, v0, v2

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private displayListDialog(IIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v6

    .line 398
    new-instance v5, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    invoke-direct {p0, p1, p2, p3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getDayDescription(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p0, v0, p4}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;-><init>(Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/util/List;)V

    const/16 v0, 0x78

    aput-boolean v7, v6, v0

    .line 399
    new-instance v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)V

    invoke-virtual {v5, v0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->setOnDialogClickListener(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;)V

    const/16 v0, 0x79

    aput-boolean v7, v6, v0

    .line 439
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "note_list_dialog"

    invoke-virtual {v5, v0, v1}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 440
    const/16 v0, 0x7a

    aput-boolean v7, v6, v0

    return-void
.end method

.method private getDayDescription(III)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->MONTH_DESCRIPTION:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private goToNextMonthYear()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 282
    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    invoke-direct {p0, v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->nextMonth(I)I

    move-result v0

    .line 283
    .local v0, "nextMonth":I
    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    if-lt v0, v2, :cond_0

    const/16 v2, 0x41

    aput-boolean v3, v1, v2

    .line 286
    :goto_0
    iput v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    .line 287
    const/16 v2, 0x43

    aput-boolean v3, v1, v2

    return-void

    .line 284
    :cond_0
    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    const/16 v2, 0x42

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private goToPreviousMonthYear()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 290
    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    invoke-direct {p0, v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->previousMonth(I)I

    move-result v0

    .line 291
    .local v0, "prevMonth":I
    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    if-gt v0, v2, :cond_0

    const/16 v2, 0x44

    aput-boolean v3, v1, v2

    .line 294
    :goto_0
    iput v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    .line 295
    const/16 v2, 0x46

    aput-boolean v3, v1, v2

    return-void

    .line 292
    :cond_0
    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    const/16 v2, 0x45

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private launchEditNoteActivity(IIILchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 463
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    const-class v3, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    const/16 v2, 0x80

    aput-boolean v4, v1, v2

    .line 465
    const-string v2, "note_bundle_key"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x81

    aput-boolean v4, v1, v2

    .line 471
    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    const/16 v2, 0x85

    aput-boolean v4, v1, v2

    return-void

    .line 467
    :cond_0
    const-string v2, "year"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x82

    aput-boolean v4, v1, v2

    .line 468
    const-string v2, "month"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x83

    aput-boolean v4, v1, v2

    .line 469
    const-string v2, "day"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x84

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private loadNotes(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 307
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v0

    const/16 v1, 0x4c

    aput-boolean v6, v2, v1

    .line 308
    invoke-interface {v0, p1, p2}, Lchan/android/app/pocketnote/app/db/NoteManager;->getNotes(II)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x4d

    aput-boolean v6, v2, v1

    .line 309
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->noteMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/16 v1, 0x4e

    aput-boolean v6, v2, v1

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v0, 0x4f

    aput-boolean v6, v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/Note;

    const/16 v1, 0x50

    aput-boolean v6, v2, v1

    .line 311
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->noteMap:Ljava/util/Map;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x51

    aput-boolean v6, v2, v1

    .line 314
    :goto_1
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->noteMap:Ljava/util/Map;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const/16 v0, 0x54

    aput-boolean v6, v2, v0

    goto :goto_0

    .line 311
    :cond_0
    const/16 v1, 0x52

    aput-boolean v6, v2, v1

    .line 312
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->noteMap:Ljava/util/Map;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 316
    :cond_1
    const/16 v0, 0x55

    aput-boolean v6, v2, v0

    return-void
.end method

.method public static newInstance()Lchan/android/app/pocketnote/app/calendar/CalendarFragment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method private nextMonth(I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 370
    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x6f

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x71

    aput-boolean v3, v1, v2

    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x70

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private previousMonth(I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 374
    add-int/lit8 v0, p1, -0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0xb

    const/16 v2, 0x72

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x74

    aput-boolean v3, v1, v2

    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    const/16 v2, 0x73

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private refresh(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 298
    iput p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    .line 299
    iput p2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    const/16 v1, 0x47

    aput-boolean v4, v0, v1

    .line 300
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->textViewMonth:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->MONTH_DESCRIPTION:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x48

    aput-boolean v4, v0, v1

    .line 301
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->loadNotes(II)V

    const/16 v1, 0x49

    aput-boolean v4, v0, v1

    .line 302
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->buildMonthView(II)V

    const/16 v1, 0x4a

    aput-boolean v4, v0, v1

    .line 303
    invoke-virtual {p0, p1, p2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->display(II)V

    .line 304
    const/16 v1, 0x4b

    aput-boolean v4, v0, v1

    return-void
.end method

.method private refreshSearchList(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 109
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v0

    const/16 v3, 0xc

    aput-boolean v1, v2, v3

    .line 110
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->buildSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lchan/android/app/pocketnote/app/db/NoteManager;->searchInCalendar(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v3, 0xd

    aput-boolean v1, v2, v3

    .line 111
    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v3, v0}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->setNotes(Ljava/util/List;)V

    const/16 v3, 0xe

    aput-boolean v1, v2, v3

    .line 112
    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notifyDataSetChanged()V

    const/16 v3, 0xf

    aput-boolean v1, v2, v3

    .line 113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x12

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x11

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private showConfirmDialog(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 447
    new-instance v1, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add new note on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    const/16 v5, 0x7c

    aput-boolean v6, v0, v5

    .line 448
    invoke-direct {p0, p1, v3, v4}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getDayDescription(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cancel"

    const-string v4, "Add"

    invoke-direct {v1, v2, v3, v4}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x7d

    aput-boolean v6, v0, v2

    .line 451
    new-instance v2, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;

    invoke-direct {v2, p0, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;I)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->setOnConfirmListener(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;)V

    const/16 v2, 0x7e

    aput-boolean v6, v0, v2

    .line 459
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "add_dialog"

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 460
    const/16 v1, 0x7f

    aput-boolean v6, v0, v1

    return-void
.end method


# virtual methods
.method public display(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 378
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->calendarItems:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;

    const/16 v1, 0x75

    aput-boolean v4, v0, v1

    .line 379
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->gridViewDays:Landroid/widget/GridView;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0x76

    aput-boolean v4, v0, v1

    .line 380
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->gridViewDays:Landroid/widget/GridView;

    new-instance v2, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;

    invoke-direct {v2, p0, p1, p2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;II)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 395
    const/16 v1, 0x77

    aput-boolean v4, v0, v1

    return-void
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
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 491
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->getNotes()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x89

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public notifyAdapter()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 486
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notifyDataSetChanged()V

    .line 487
    const/16 v1, 0x88

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 476
    iget v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    invoke-direct {p0, v1, v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->refresh(II)V

    .line 477
    const/16 v1, 0x86

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 70
    invoke-virtual {p0, v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->setHasOptionsMenu(Z)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->calendarItems:Ljava/util/List;

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->noteMap:Ljava/util/Map;

    .line 73
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 77
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 78
    const v0, 0x7f0e0001

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 79
    const v0, 0x7f0c00bf

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 80
    new-instance v2, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    const/16 v3, 0x9

    aput-boolean v4, v1, v3

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 106
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 164
    const-string v0, "CalendarFragment.onCreateView()"

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0x26

    aput-boolean v5, v1, v0

    .line 165
    const v0, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x27

    aput-boolean v5, v1, v0

    .line 166
    const v0, 0x7f0c0046

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/16 v0, 0x28

    aput-boolean v5, v1, v0

    .line 167
    const v0, 0x7f0c0050

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->listViewSearch:Landroid/widget/ListView;

    const/16 v0, 0x29

    aput-boolean v5, v1, v0

    .line 168
    new-instance v0, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v3, v4}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    const/16 v0, 0x2a

    aput-boolean v5, v1, v0

    .line 169
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->listViewSearch:Landroid/widget/ListView;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x2b

    aput-boolean v5, v1, v0

    .line 170
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->listViewSearch:Landroid/widget/ListView;

    new-instance v3, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v0, 0x2c

    aput-boolean v5, v1, v0

    .line 171
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->listViewSearch:Landroid/widget/ListView;

    new-instance v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x2d

    aput-boolean v5, v1, v0

    .line 195
    const v0, 0x7f0c004c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->gridViewDays:Landroid/widget/GridView;

    const/16 v0, 0x2e

    aput-boolean v5, v1, v0

    .line 196
    const v0, 0x7f0c004b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->textViewMonth:Landroid/widget/TextView;

    const/16 v0, 0x2f

    aput-boolean v5, v1, v0

    .line 197
    const v0, 0x7f0c0047

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->relativeLayoutRoot:Landroid/widget/RelativeLayout;

    const/16 v0, 0x30

    aput-boolean v5, v1, v0

    .line 198
    new-instance v0, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    new-instance v4, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;

    invoke-direct {v4, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$3;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    invoke-direct {v0, v3, v4}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;-><init>(Landroid/content/Context;Lchan/android/app/pocketnote/app/calendar/Swiper;)V

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->swipeListener:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    const/16 v0, 0x31

    aput-boolean v5, v1, v0

    .line 219
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->relativeLayoutRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v0, 0x32

    aput-boolean v5, v1, v0

    .line 221
    const v0, 0x7f0c004a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x33

    aput-boolean v5, v1, v3

    .line 222
    new-instance v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$4;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$4;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x34

    aput-boolean v5, v1, v0

    .line 229
    const v0, 0x7f0c0049

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x35

    aput-boolean v5, v1, v3

    .line 230
    new-instance v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$5;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$5;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x36

    aput-boolean v5, v1, v0

    .line 237
    const v0, 0x7f0c004f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v3, 0x37

    aput-boolean v5, v1, v3

    .line 238
    new-instance v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$6;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x38

    aput-boolean v5, v1, v0

    .line 245
    const v0, 0x7f0c004d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v3, 0x39

    aput-boolean v5, v1, v3

    .line 246
    new-instance v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$7;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$7;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x3a

    aput-boolean v5, v1, v0

    .line 253
    const v0, 0x7f0c004e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v3, 0x3b

    aput-boolean v5, v1, v3

    .line 254
    new-instance v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$8;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x3c

    aput-boolean v5, v1, v0

    .line 274
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0x3d

    aput-boolean v5, v1, v3

    .line 275
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    const/16 v3, 0x3e

    aput-boolean v5, v1, v3

    .line 276
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    const/16 v0, 0x3f

    aput-boolean v5, v1, v0

    .line 277
    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    iget v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    invoke-direct {p0, v0, v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->refresh(II)V

    .line 278
    const/16 v0, 0x40

    aput-boolean v5, v1, v0

    return-object v2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    const-string v1, "CalendarFragment.onDestroy()"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    .line 153
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 154
    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 146
    const-string v1, "CalendarFragment.onDestroyView()"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 147
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 148
    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 127
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 158
    const-string v1, "CalendarFragment.onPause()"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    .line 159
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 160
    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    const-string v1, "CalendarFragment.onResume()"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    .line 133
    iget v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->month:I

    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->year:I

    invoke-direct {p0, v1, v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->refresh(II)V

    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    .line 134
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->savedSearchQuery:Ljava/lang/String;

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->refreshSearchList(Ljava/lang/String;)Z

    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    .line 135
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 136
    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    const-string v1, "CalendarFragment.onStop()"

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    .line 141
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 142
    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 481
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->swipeListener:Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/OnSwipeListener;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/16 v2, 0x87

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
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
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 496
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1, p1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->setNotes(Ljava/util/List;)V

    const/16 v1, 0x8a

    aput-boolean v2, v0, v1

    .line 497
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notifyDataSetChanged()V

    .line 498
    const/16 v1, 0x8b

    aput-boolean v2, v0, v1

    return-void
.end method
