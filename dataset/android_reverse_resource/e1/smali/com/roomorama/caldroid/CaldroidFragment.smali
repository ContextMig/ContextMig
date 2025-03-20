.class public Lcom/roomorama/caldroid/CaldroidFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CaldroidFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;
    }
.end annotation


# static fields
.field public static final DIALOG_TITLE:Ljava/lang/String; = "dialogTitle"

.field public static final DISABLE_DATES:Ljava/lang/String; = "disableDates"

.field public static final ENABLE_CLICK_ON_DISABLED_DATES:Ljava/lang/String; = "enableClickOnDisabledDates"

.field public static final ENABLE_SWIPE:Ljava/lang/String; = "enableSwipe"

.field public static FRIDAY:I = 0x0

.field public static final MAX_DATE:Ljava/lang/String; = "maxDate"

.field public static final MIN_DATE:Ljava/lang/String; = "minDate"

.field public static MONDAY:I = 0x0

.field public static final MONTH:Ljava/lang/String; = "month"

.field private static final MONTH_YEAR_FLAG:I = 0x34

.field public static final NUMBER_OF_PAGES:I = 0x4

.field public static SATURDAY:I = 0x0

.field public static final SELECTED_DATES:Ljava/lang/String; = "selectedDates"

.field public static final SHOW_NAVIGATION_ARROWS:Ljava/lang/String; = "showNavigationArrows"

.field public static final SIX_WEEKS_IN_CALENDAR:Ljava/lang/String; = "sixWeeksInCalendar"

.field public static final SQUARE_TEXT_VIEW_CELL:Ljava/lang/String; = "squareTextViewCell"

.field public static final START_DAY_OF_WEEK:Ljava/lang/String; = "startDayOfWeek"

.field public static SUNDAY:I = 0x0

.field public static final THEME_RESOURCE:Ljava/lang/String; = "themeResource"

.field public static THURSDAY:I = 0x0

.field public static TUESDAY:I = 0x0

.field public static WEDNESDAY:I = 0x0

.field public static final YEAR:Ljava/lang/String; = "year"

.field public static final _BACKGROUND_FOR_DATETIME_MAP:Ljava/lang/String; = "_backgroundForDateTimeMap"

.field public static final _MAX_DATE_TIME:Ljava/lang/String; = "_maxDateTime"

.field public static final _MIN_DATE_TIME:Ljava/lang/String; = "_minDateTime"

.field public static final _TEXT_COLOR_FOR_DATETIME_MAP:Ljava/lang/String; = "_textColorForDateTimeMap"

.field public static disabledBackgroundDrawable:I

.field public static disabledTextColor:I


# instance fields
.field protected backgroundForDateTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected caldroidData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

.field protected dateInMonthsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected datePagerAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

.field protected dialogTitle:Ljava/lang/String;

.field protected disableDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected enableClickOnDisabledDates:Z

.field protected enableSwipe:Z

.field protected extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private firstMonthTime:Landroid/text/format/Time;

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/DateGridFragment;",
            ">;"
        }
    .end annotation
.end field

.field private leftArrowButton:Landroid/widget/Button;

.field protected maxDateTime:Lhirondelle/date4j/DateTime;

.field protected minDateTime:Lhirondelle/date4j/DateTime;

.field protected month:I

.field private monthTitleTextView:Landroid/widget/TextView;

.field private monthYearFormatter:Ljava/util/Formatter;

.field private final monthYearStringBuilder:Ljava/lang/StringBuilder;

.field private pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

.field private rightArrowButton:Landroid/widget/Button;

.field protected selectedDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field protected showNavigationArrows:Z

.field private sixWeeksInCalendar:Z

.field protected squareTextViewCell:Z

.field protected startDayOfWeek:I

.field protected textColorForDateTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private themeResource:I

.field private weekdayGridView:Landroid/widget/GridView;

.field protected year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->SUNDAY:I

    .line 87
    const/4 v0, 0x2

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->MONDAY:I

    .line 88
    const/4 v0, 0x3

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->TUESDAY:I

    .line 89
    const/4 v0, 0x4

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->WEDNESDAY:I

    .line 90
    const/4 v0, 0x5

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->THURSDAY:I

    .line 91
    const/4 v0, 0x6

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->FRIDAY:I

    .line 92
    const/4 v0, 0x7

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->SATURDAY:I

    .line 117
    const/4 v0, -0x1

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->disabledBackgroundDrawable:I

    .line 118
    const v0, -0x777778

    sput v0, Lcom/roomorama/caldroid/CaldroidFragment;->disabledTextColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 81
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 103
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthYearStringBuilder:Ljava/lang/StringBuilder;

    .line 109
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthYearStringBuilder:Ljava/lang/StringBuilder;

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthYearFormatter:Ljava/util/Formatter;

    .line 131
    sget v0, Lcom/caldroid/R$style;->CaldroidDefault:I

    iput v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    .line 165
    iput v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    .line 166
    iput v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->extraData:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    .line 197
    sget v0, Lcom/roomorama/caldroid/CaldroidFragment;->SUNDAY:I

    iput v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    .line 203
    iput-boolean v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->sixWeeksInCalendar:Z

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    .line 213
    iput-boolean v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->enableSwipe:Z

    .line 214
    iput-boolean v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->showNavigationArrows:Z

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->enableClickOnDisabledDates:Z

    return-void
.end method

.method static synthetic access$000(Lcom/roomorama/caldroid/CaldroidFragment;)Lcom/roomorama/caldroid/CaldroidListener;
    .locals 1
    .param p0, "x0"    # Lcom/roomorama/caldroid/CaldroidFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

    return-object v0
.end method

.method public static getThemeInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origInflater"    # Landroid/view/LayoutInflater;
    .param p2, "themeResource"    # I

    .prologue
    .line 1229
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1230
    .local v0, "wrapped":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;II)Lcom/roomorama/caldroid/CaldroidFragment;
    .locals 3
    .param p0, "dialogTitle"    # Ljava/lang/String;
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 1191
    new-instance v1, Lcom/roomorama/caldroid/CaldroidFragment;

    invoke-direct {v1}, Lcom/roomorama/caldroid/CaldroidFragment;-><init>()V

    .line 1194
    .local v1, "f":Lcom/roomorama/caldroid/CaldroidFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1195
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dialogTitle"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v2, "month"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    const-string v2, "year"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    invoke-virtual {v1, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1201
    return-object v1
.end method

.method private setupDateGridPages(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1331
    new-instance v2, Lhirondelle/date4j/DateTime;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1334
    .local v2, "currentDateTime":Lhirondelle/date4j/DateTime;
    new-instance v4, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;-><init>(Lcom/roomorama/caldroid/CaldroidFragment;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    .line 1335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v4, v2}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->setCurrentDateTime(Lhirondelle/date4j/DateTime;)V

    .line 1340
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1339
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/roomorama/caldroid/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/roomorama/caldroid/CaldroidGridAdapter;

    move-result-object v14

    .line 1343
    .local v14, "adapter0":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    invoke-virtual {v14}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->getDatetimeList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    .line 1346
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v2 .. v10}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v3

    .line 1349
    .local v3, "nextDateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1348
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/roomorama/caldroid/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/roomorama/caldroid/CaldroidGridAdapter;

    move-result-object v15

    .line 1352
    .local v15, "adapter1":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    invoke-virtual/range {v3 .. v11}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v21

    .line 1355
    .local v21, "next2DateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual/range {v21 .. v21}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1354
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/roomorama/caldroid/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/roomorama/caldroid/CaldroidGridAdapter;

    move-result-object v16

    .line 1358
    .local v16, "adapter2":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    move-object v4, v2

    invoke-virtual/range {v4 .. v12}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v23

    .line 1361
    .local v23, "prevDateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual/range {v23 .. v23}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1360
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/roomorama/caldroid/CaldroidFragment;->getNewDatesGridAdapter(II)Lcom/roomorama/caldroid/CaldroidGridAdapter;

    move-result-object v17

    .line 1364
    .local v17, "adapter3":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->setCaldroidGridAdapters(Ljava/util/ArrayList;)V

    .line 1376
    sget v4, Lcom/caldroid/R$id;->months_infinite_pager:I

    .line 1377
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    .line 1380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/roomorama/caldroid/CaldroidFragment;->enableSwipe:Z

    invoke-virtual {v4, v5}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setEnabled(Z)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/roomorama/caldroid/CaldroidFragment;->sixWeeksInCalendar:Z

    invoke-virtual {v4, v5}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setSixWeeksInCalendar(Z)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateInMonthsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setDatesInMonth(Ljava/util/ArrayList;)V

    .line 1392
    new-instance v22, Lcom/roomorama/caldroid/MonthPagerAdapter;

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/roomorama/caldroid/MonthPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1397
    .local v22, "pagerAdapter":Lcom/roomorama/caldroid/MonthPagerAdapter;
    invoke-virtual/range {v22 .. v22}, Lcom/roomorama/caldroid/MonthPagerAdapter;->getFragments()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->fragments:Ljava/util/ArrayList;

    .line 1399
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    const/4 v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_0

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->fragments:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/roomorama/caldroid/DateGridFragment;

    .line 1401
    .local v18, "dateGridFragment":Lcom/roomorama/caldroid/DateGridFragment;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .line 1402
    .local v13, "adapter":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getGridViewRes()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/roomorama/caldroid/DateGridFragment;->setGridViewRes(I)V

    .line 1403
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/roomorama/caldroid/DateGridFragment;->setGridAdapter(Lcom/roomorama/caldroid/CaldroidGridAdapter;)V

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getDateItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/roomorama/caldroid/DateGridFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1406
    invoke-virtual/range {p0 .. p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getDateItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/roomorama/caldroid/DateGridFragment;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1399
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1410
    .end local v13    # "adapter":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    .end local v18    # "dateGridFragment":Lcom/roomorama/caldroid/DateGridFragment;
    :cond_0
    new-instance v20, Lcom/antonyt/infiniteviewpager/InfinitePagerAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/antonyt/infiniteviewpager/InfinitePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    .line 1414
    .local v20, "infinitePagerAdapter":Lcom/antonyt/infiniteviewpager/InfinitePagerAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v4, v5}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1418
    return-void
.end method


# virtual methods
.method public clearBackgroundDrawableForDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 438
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 439
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    return-void
.end method

.method public clearBackgroundDrawableForDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 1
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-void
.end method

.method public clearBackgroundDrawableForDateTimes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhirondelle/date4j/DateTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "dateTimes":Ljava/util/List;, "Ljava/util/List<Lhirondelle/date4j/DateTime;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 430
    :cond_0
    return-void

    .line 427
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhirondelle/date4j/DateTime;

    .line 428
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearBackgroundDrawableForDates(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 417
    :cond_0
    return-void

    .line 414
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 415
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->clearBackgroundDrawableForDate(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public clearDisableDates()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 692
    return-void
.end method

.method public clearSelectedDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 819
    if-nez p1, :cond_0

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 823
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearSelectedDates()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 753
    return-void
.end method

.method public clearTextColorForDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 489
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 490
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method

.method public clearTextColorForDates(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "dates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 476
    :cond_0
    return-void

    .line 473
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 474
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->clearTextColorForDate(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public getBackgroundForDateTimeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCaldroidData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "disableDates"

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "selectedDates"

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "_minDateTime"

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "_maxDateTime"

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "startDayOfWeek"

    iget v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "sixWeeksInCalendar"

    iget-boolean v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->sixWeeksInCalendar:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "squareTextViewCell"

    iget-boolean v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->squareTextViewCell:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "themeResource"

    iget v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "_backgroundForDateTimeMap"

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    .line 367
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    const-string v1, "_textColorForDateTimeMap"

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidData:Ljava/util/Map;

    return-object v0
.end method

.method public getCaldroidListener()Lcom/roomorama/caldroid/CaldroidListener;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

    return-object v0
.end method

.method public getCurrentVirtualPosition()I
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    invoke-virtual {v1}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->getCurrentItem()I

    move-result v0

    .line 590
    .local v0, "currentPage":I
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v0}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->getCurrent(I)I

    move-result v1

    return v1
.end method

.method public getDateItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v0, :cond_0

    .line 961
    new-instance v0, Lcom/roomorama/caldroid/CaldroidFragment$1;

    invoke-direct {v0, p0}, Lcom/roomorama/caldroid/CaldroidFragment$1;-><init>(Lcom/roomorama/caldroid/CaldroidFragment;)V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getDateItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez v0, :cond_0

    .line 999
    new-instance v0, Lcom/roomorama/caldroid/CaldroidFragment$2;

    invoke-direct {v0, p0}, Lcom/roomorama/caldroid/CaldroidFragment$2;-><init>(Lcom/roomorama/caldroid/CaldroidFragment;)V

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public getDatePagerAdapters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/CaldroidGridAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDateViewPager()Lcom/antonyt/infiniteviewpager/InfiniteViewPager;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    return-object v0
.end method

.method protected getDaysOfWeek()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1426
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1431
    .local v9, "fmt":Ljava/text/SimpleDateFormat;
    new-instance v0, Lhirondelle/date4j/DateTime;

    const/16 v1, 0x7dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1432
    .local v0, "sunday":Lhirondelle/date4j/DateTime;
    iget v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    sget v2, Lcom/roomorama/caldroid/CaldroidFragment;->SUNDAY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 1434
    .local v12, "nextDay":Lhirondelle/date4j/DateTime;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v10, v1, :cond_0

    .line 1435
    invoke-static {v12}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateTimeToDate(Lhirondelle/date4j/DateTime;)Ljava/util/Date;

    move-result-object v8

    .line 1436
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 1434
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1440
    .end local v8    # "date":Ljava/util/Date;
    :cond_0
    return-object v11
.end method

.method public getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->extraData:Ljava/util/Map;

    return-object v0
.end method

.method public getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roomorama/caldroid/DateGridFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->fragments:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getGridViewRes()I
    .locals 1

    .prologue
    .line 1320
    sget v0, Lcom/caldroid/R$layout;->date_grid_fragment:I

    return v0
.end method

.method public getLeftArrowButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->leftArrowButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    return v0
.end method

.method public getMonthTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNewDatesGridAdapter(II)Lcom/roomorama/caldroid/CaldroidGridAdapter;
    .locals 6
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 265
    new-instance v0, Lcom/roomorama/caldroid/CaldroidGridAdapter;

    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getCaldroidData()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/roomorama/caldroid/CaldroidFragment;->extraData:Ljava/util/Map;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/roomorama/caldroid/CaldroidGridAdapter;-><init>(Landroid/content/Context;IILjava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public getNewWeekdayAdapter(I)Lcom/roomorama/caldroid/WeekdayArrayAdapter;
    .locals 4
    .param p1, "themeResource"    # I

    .prologue
    .line 274
    new-instance v0, Lcom/roomorama/caldroid/WeekdayArrayAdapter;

    .line 275
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090003

    .line 276
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getDaysOfWeek()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/roomorama/caldroid/WeekdayArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    return-object v0
.end method

.method public getRightArrowButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->rightArrowButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSavedStates()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 503
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 504
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "month"

    iget v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 505
    const-string v2, "year"

    iget v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 508
    const-string v2, "dialogTitle"

    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 512
    const-string v2, "selectedDates"

    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    .line 513
    invoke-static {v3}, Lcom/roomorama/caldroid/CalendarHelper;->convertToStringList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 512
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 517
    const-string v2, "disableDates"

    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    .line 518
    invoke-static {v3}, Lcom/roomorama/caldroid/CalendarHelper;->convertToStringList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 517
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v2, :cond_3

    .line 522
    const-string v2, "minDate"

    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    const-string v4, "YYYY-MM-DD"

    invoke-virtual {v3, v4}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_3
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    if-eqz v2, :cond_4

    .line 526
    const-string v2, "maxDate"

    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    const-string v4, "YYYY-MM-DD"

    invoke-virtual {v3, v4}, Lhirondelle/date4j/DateTime;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_4
    const-string v2, "showNavigationArrows"

    iget-boolean v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->showNavigationArrows:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 530
    const-string v2, "enableSwipe"

    iget-boolean v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->enableSwipe:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    const-string v2, "startDayOfWeek"

    iget v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string v2, "sixWeeksInCalendar"

    iget-boolean v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->sixWeeksInCalendar:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    const-string v2, "themeResource"

    iget v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 536
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v2, "squareTextViewCell"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 537
    const-string v2, "squareTextViewCell"

    const-string v3, "squareTextViewCell"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    :cond_5
    return-object v1
.end method

.method public getTextColorForDateTimeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getThemeResource()I
    .locals 1

    .prologue
    .line 1225
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    return v0
.end method

.method public getWeekdayGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->weekdayGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    return v0
.end method

.method public isEnableSwipe()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->enableSwipe:Z

    return v0
.end method

.method public isSelectedDate(Ljava/util/Date;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 831
    if-nez p1, :cond_0

    .line 832
    const/4 v1, 0x0

    .line 835
    :goto_0
    return v1

    .line 834
    :cond_0
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 835
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isShowNavigationArrows()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->showNavigationArrows:Z

    return v0
.end method

.method public isSixWeeksInCalendar()Z
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->sixWeeksInCalendar:Z

    return v0
.end method

.method public moveToDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 599
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->moveToDateTime(Lhirondelle/date4j/DateTime;)V

    .line 600
    return-void
.end method

.method public moveToDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 14
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 609
    new-instance v0, Lhirondelle/date4j/DateTime;

    iget v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lhirondelle/date4j/DateTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 610
    .local v0, "firstOfMonth":Lhirondelle/date4j/DateTime;
    invoke-virtual {v0}, Lhirondelle/date4j/DateTime;->getEndOfMonth()Lhirondelle/date4j/DateTime;

    move-result-object v13

    .line 616
    .local v13, "lastOfMonth":Lhirondelle/date4j/DateTime;
    invoke-virtual {p1, v0}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lhirondelle/date4j/DateTime;->plus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v12

    .line 623
    .local v12, "firstDayNextMonth":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v12}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->setCurrentDateTime(Lhirondelle/date4j/DateTime;)V

    .line 624
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    invoke-virtual {v1}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->getCurrentItem()I

    move-result v10

    .line 625
    .local v10, "currentItem":I
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v10}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->refreshAdapters(I)V

    .line 628
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v1, v2}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setCurrentItem(I)V

    .line 647
    .end local v10    # "currentItem":I
    .end local v12    # "firstDayNextMonth":Lhirondelle/date4j/DateTime;
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-virtual {p1, v13}, Lhirondelle/date4j/DateTime;->gt(Lhirondelle/date4j/DateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lhirondelle/date4j/DateTime$DayOverflow;->LastDay:Lhirondelle/date4j/DateTime$DayOverflow;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Lhirondelle/date4j/DateTime;->minus(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lhirondelle/date4j/DateTime$DayOverflow;)Lhirondelle/date4j/DateTime;

    move-result-object v11

    .line 639
    .local v11, "firstDayLastMonth":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v11}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->setCurrentDateTime(Lhirondelle/date4j/DateTime;)V

    .line 640
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    invoke-virtual {v1}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->getCurrentItem()I

    move-result v10

    .line 641
    .restart local v10    # "currentItem":I
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1, v10}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->refreshAdapters(I)V

    .line 644
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public nextMonth()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setCurrentItem(I)V

    .line 684
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->retrieveInitialArgs()V

    .line 1242
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1244
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/roomorama/caldroid/CaldroidFragment;->setRetainInstance(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    invoke-static {v4, p1, v5}, Lcom/roomorama/caldroid/CaldroidFragment;->getThemeInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1255
    .local v1, "localInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 1257
    sget v4, Lcom/caldroid/R$layout;->calendar_view:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1260
    .local v2, "view":Landroid/view/View;
    sget v4, Lcom/caldroid/R$id;->calendar_month_year_textview:I

    .line 1261
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    .line 1264
    sget v4, Lcom/caldroid/R$id;->calendar_left_arrow:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->leftArrowButton:Landroid/widget/Button;

    .line 1265
    sget v4, Lcom/caldroid/R$id;->calendar_right_arrow:I

    .line 1266
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->rightArrowButton:Landroid/widget/Button;

    .line 1269
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->leftArrowButton:Landroid/widget/Button;

    new-instance v5, Lcom/roomorama/caldroid/CaldroidFragment$3;

    invoke-direct {v5, p0}, Lcom/roomorama/caldroid/CaldroidFragment$3;-><init>(Lcom/roomorama/caldroid/CaldroidFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->rightArrowButton:Landroid/widget/Button;

    new-instance v5, Lcom/roomorama/caldroid/CaldroidFragment$4;

    invoke-direct {v5, p0}, Lcom/roomorama/caldroid/CaldroidFragment$4;-><init>(Lcom/roomorama/caldroid/CaldroidFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1287
    iget-boolean v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->showNavigationArrows:Z

    invoke-virtual {p0, v4}, Lcom/roomorama/caldroid/CaldroidFragment;->setShowNavigationArrows(Z)V

    .line 1290
    sget v4, Lcom/caldroid/R$id;->weekday_gridview:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->weekdayGridView:Landroid/widget/GridView;

    .line 1291
    iget v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    invoke-virtual {p0, v4}, Lcom/roomorama/caldroid/CaldroidFragment;->getNewWeekdayAdapter(I)Lcom/roomorama/caldroid/WeekdayArrayAdapter;

    move-result-object v3

    .line 1292
    .local v3, "weekdaysAdapter":Lcom/roomorama/caldroid/WeekdayArrayAdapter;
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->weekdayGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1295
    invoke-direct {p0, v2}, Lcom/roomorama/caldroid/CaldroidFragment;->setupDateGridPages(Landroid/view/View;)V

    .line 1298
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->refreshView()V

    .line 1300
    return-object v2

    .line 1245
    .end local v1    # "localInflater":Landroid/view/LayoutInflater;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "weekdaysAdapter":Lcom/roomorama/caldroid/WeekdayArrayAdapter;
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 1217
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 1218
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 1610
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 1613
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string v3, "mChildFragmentManager"

    .line 1614
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1615
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1616
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1623
    return-void

    .line 1618
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 1619
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1620
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 1621
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1305
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1309
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

    invoke-virtual {v0}, Lcom/roomorama/caldroid/CaldroidListener;->onCaldroidViewCreated()V

    .line 1312
    :cond_0
    return-void
.end method

.method public prevMonth()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->pageChangeListener:Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;

    invoke-virtual {v1}, Lcom/roomorama/caldroid/CaldroidFragment$DatePageChangeListener;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setCurrentItem(I)V

    .line 677
    return-void
.end method

.method protected refreshMonthTitleTextView()V
    .locals 8

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    iget v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 1036
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    iget v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1037
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    const/16 v1, 0xf

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1038
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->firstMonthTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1042
    .local v2, "millis":J
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthYearStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1043
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthYearFormatter:Ljava/util/Formatter;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1046
    .local v7, "monthTitle":Ljava/lang/String;
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    return-void
.end method

.method public refreshView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1056
    iget v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    if-ne v1, v2, :cond_1

    .line 1076
    :cond_0
    return-void

    .line 1060
    :cond_1
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->refreshMonthTitleTextView()V

    .line 1063
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->datePagerAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roomorama/caldroid/CaldroidGridAdapter;

    .line 1065
    .local v0, "adapter":Lcom/roomorama/caldroid/CaldroidGridAdapter;
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getCaldroidData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setCaldroidData(Ljava/util/Map;)V

    .line 1068
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->extraData:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->setExtraData(Ljava/util/Map;)V

    .line 1071
    invoke-virtual {v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->updateToday()V

    .line 1074
    invoke-virtual {v0}, Lcom/roomorama/caldroid/CaldroidGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public restoreDialogStatesFromKey(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "dialogTag"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-virtual {p0, p2, p3}, Lcom/roomorama/caldroid/CaldroidFragment;->restoreStatesFromKey(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roomorama/caldroid/CaldroidFragment;

    .line 579
    .local v0, "existingDialog":Lcom/roomorama/caldroid/CaldroidFragment;
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/roomorama/caldroid/CaldroidFragment;->dismiss()V

    .line 581
    invoke-virtual {p0, p1, p4}, Lcom/roomorama/caldroid/CaldroidFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 583
    :cond_0
    return-void
.end method

.method public restoreStatesFromKey(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 560
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 562
    .local v0, "caldroidSavedState":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 564
    .end local v0    # "caldroidSavedState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected retrieveInitialArgs()V
    .locals 12

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1087
    .local v0, "args":Landroid/os/Bundle;
    invoke-static {}, Lcom/roomorama/caldroid/CalendarHelper;->setup()V

    .line 1089
    if-eqz v0, :cond_8

    .line 1091
    const-string v10, "month"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    .line 1092
    const-string v10, "year"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    .line 1093
    const-string v10, "dialogTitle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    .line 1094
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    .line 1095
    .local v3, "dialog":Landroid/app/Dialog;
    if-eqz v3, :cond_0

    .line 1096
    iget-object v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 1097
    iget-object v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dialogTitle:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1106
    :cond_0
    :goto_0
    const-string v10, "startDayOfWeek"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    .line 1107
    iget v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_1

    .line 1108
    iget v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    rem-int/lit8 v10, v10, 0x7

    iput v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->startDayOfWeek:I

    .line 1112
    :cond_1
    const-string v10, "showNavigationArrows"

    const/4 v11, 0x1

    .line 1113
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->showNavigationArrows:Z

    .line 1116
    const-string v10, "enableSwipe"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->enableSwipe:Z

    .line 1119
    const-string v10, "sixWeeksInCalendar"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->sixWeeksInCalendar:Z

    .line 1123
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v8, v10, Landroid/content/res/Configuration;->orientation:I

    .line 1124
    .local v8, "orientation":I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_3

    .line 1125
    const-string v10, "squareTextViewCell"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->squareTextViewCell:Z

    .line 1131
    :goto_1
    const-string v10, "enableClickOnDisabledDates"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->enableClickOnDisabledDates:Z

    .line 1135
    const-string v10, "disableDates"

    .line 1136
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1137
    .local v4, "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1138
    iget-object v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1139
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1140
    .local v1, "dateString":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v1, v11}, Lcom/roomorama/caldroid/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v5

    .line 1142
    .local v5, "dt":Lhirondelle/date4j/DateTime;
    iget-object v11, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1101
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v4    # "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "dt":Lhirondelle/date4j/DateTime;
    .end local v8    # "orientation":I
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 1127
    .restart local v8    # "orientation":I
    :cond_3
    const-string v10, "squareTextViewCell"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->squareTextViewCell:Z

    goto :goto_1

    .line 1147
    .restart local v4    # "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v10, "selectedDates"

    .line 1148
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1149
    .local v9, "selectedDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 1150
    iget-object v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1151
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1152
    .restart local v1    # "dateString":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v1, v11}, Lcom/roomorama/caldroid/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v5

    .line 1154
    .restart local v5    # "dt":Lhirondelle/date4j/DateTime;
    iget-object v11, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1159
    .end local v1    # "dateString":Ljava/lang/String;
    .end local v5    # "dt":Lhirondelle/date4j/DateTime;
    :cond_5
    const-string v10, "minDate"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1160
    .local v7, "minDateTimeString":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 1161
    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/roomorama/caldroid/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v10

    iput-object v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 1165
    :cond_6
    const-string v10, "maxDate"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1166
    .local v6, "maxDateTimeString":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 1167
    const/4 v10, 0x0

    invoke-static {v6, v10}, Lcom/roomorama/caldroid/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v10

    iput-object v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 1172
    :cond_7
    const-string v10, "themeResource"

    sget v11, Lcom/caldroid/R$style;->CaldroidDefault:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    .line 1174
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v4    # "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "maxDateTimeString":Ljava/lang/String;
    .end local v7    # "minDateTimeString":Ljava/lang/String;
    .end local v8    # "orientation":I
    .end local v9    # "selectedDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    iget v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    .line 1175
    :cond_9
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Lhirondelle/date4j/DateTime;->today(Ljava/util/TimeZone;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 1176
    .local v2, "dateTime":Lhirondelle/date4j/DateTime;
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    .line 1177
    invoke-virtual {v2}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    .line 1179
    .end local v2    # "dateTime":Lhirondelle/date4j/DateTime;
    :cond_a
    return-void
.end method

.method public saveStatesToKey(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->getSavedStates()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 551
    return-void
.end method

.method public setBackgroundDrawableForDate(Landroid/graphics/drawable/Drawable;Ljava/util/Date;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 433
    invoke-static {p2}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 434
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public setBackgroundDrawableForDateTime(Landroid/graphics/drawable/Drawable;Lhirondelle/date4j/DateTime;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method

.method public setBackgroundDrawableForDateTimes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "backgroundForDateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Lhirondelle/date4j/DateTime;Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 422
    return-void
.end method

.method public setBackgroundDrawableForDates(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Date;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "backgroundForDateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Date;Landroid/graphics/drawable/Drawable;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 407
    :cond_0
    return-void

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 402
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 403
    .local v0, "date":Ljava/util/Date;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 404
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 405
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->backgroundForDateTimeMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCaldroidListener(Lcom/roomorama/caldroid/CaldroidListener;)V
    .locals 0
    .param p1, "caldroidListener"    # Lcom/roomorama/caldroid/CaldroidListener;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

    .line 951
    return-void
.end method

.method public setCalendarDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 657
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->setCalendarDateTime(Lhirondelle/date4j/DateTime;)V

    .line 658
    return-void
.end method

.method public setCalendarDateTime(Lhirondelle/date4j/DateTime;)V
    .locals 3
    .param p1, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 661
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    .line 662
    invoke-virtual {p1}, Lhirondelle/date4j/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    .line 665
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->caldroidListener:Lcom/roomorama/caldroid/CaldroidListener;

    iget v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->month:I

    iget v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->year:I

    invoke-virtual {v0, v1, v2}, Lcom/roomorama/caldroid/CaldroidListener;->onChangeMonth(II)V

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/roomorama/caldroid/CaldroidFragment;->refreshView()V

    .line 670
    return-void
.end method

.method public setDisableDates(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "disableDateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 711
    :cond_0
    return-void

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 706
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 707
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 708
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDisableDatesFromString(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->setDisableDatesFromString(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public setDisableDatesFromString(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p2, "dateFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, "disableDateStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 745
    :cond_0
    return-void

    .line 738
    :cond_1
    iget-object v2, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 740
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 741
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/roomorama/caldroid/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 743
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->disableDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setEnableSwipe(Z)V
    .locals 1
    .param p1, "enableSwipe"    # Z

    .prologue
    .line 873
    iput-boolean p1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->enableSwipe:Z

    .line 874
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    invoke-virtual {v0, p1}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setEnabled(Z)V

    .line 875
    return-void
.end method

.method public setExtraData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->extraData:Ljava/util/Map;

    .line 389
    return-void
.end method

.method public setMaxDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "maxDate"    # Ljava/util/Date;

    .prologue
    .line 921
    if-nez p1, :cond_0

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMaxDateFromString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "maxDateString"    # Ljava/lang/String;
    .param p2, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 936
    if-nez p1, :cond_0

    .line 937
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->setMaxDate(Ljava/util/Date;)V

    .line 942
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-static {p1, p2}, Lcom/roomorama/caldroid/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->maxDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMinDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "minDate"    # Ljava/util/Date;

    .prologue
    .line 883
    if-nez p1, :cond_0

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMinDateFromString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "minDateString"    # Ljava/lang/String;
    .param p2, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roomorama/caldroid/CaldroidFragment;->setMinDate(Ljava/util/Date;)V

    .line 913
    :goto_0
    return-void

    .line 910
    :cond_0
    invoke-static {p1, p2}, Lcom/roomorama/caldroid/CalendarHelper;->getDateTimeFromString(Ljava/lang/String;Ljava/lang/String;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->minDateTime:Lhirondelle/date4j/DateTime;

    goto :goto_0
.end method

.method public setMonthTitleTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "monthTitleTextView"    # Landroid/widget/TextView;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->monthTitleTextView:Landroid/widget/TextView;

    .line 336
    return-void
.end method

.method public setSelectedDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 807
    if-nez p1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 811
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSelectedDateStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fromDateString"    # Ljava/lang/String;
    .param p2, "toDateString"    # Ljava/lang/String;
    .param p3, "dateFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-static {p1, p3}, Lcom/roomorama/caldroid/CalendarHelper;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 798
    .local v0, "fromDate":Ljava/util/Date;
    invoke-static {p2, p3}, Lcom/roomorama/caldroid/CalendarHelper;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 799
    .local v1, "toDate":Ljava/util/Date;
    invoke-virtual {p0, v0, v1}, Lcom/roomorama/caldroid/CaldroidFragment;->setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V

    .line 800
    return-void
.end method

.method public setSelectedDates(Ljava/util/Date;Ljava/util/Date;)V
    .locals 4
    .param p1, "fromDate"    # Ljava/util/Date;
    .param p2, "toDate"    # Ljava/util/Date;

    .prologue
    .line 767
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 773
    invoke-static {p1}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 774
    .local v1, "fromDateTime":Lhirondelle/date4j/DateTime;
    invoke-static {p2}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v2

    .line 776
    .local v2, "toDateTime":Lhirondelle/date4j/DateTime;
    move-object v0, v1

    .line 777
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    :goto_1
    invoke-virtual {v0, v2}, Lhirondelle/date4j/DateTime;->lt(Lhirondelle/date4j/DateTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 778
    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhirondelle/date4j/DateTime;->plusDays(Ljava/lang/Integer;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    goto :goto_1

    .line 781
    :cond_2
    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->selectedDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShowNavigationArrows(Z)V
    .locals 3
    .param p1, "showNavigationArrows"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 853
    iput-boolean p1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->showNavigationArrows:Z

    .line 854
    if-eqz p1, :cond_0

    .line 855
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->leftArrowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 856
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->rightArrowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 861
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->leftArrowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->rightArrowButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSixWeeksInCalendar(Z)V
    .locals 1
    .param p1, "sixWeeksInCalendar"    # Z

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->sixWeeksInCalendar:Z

    .line 896
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->dateViewPager:Lcom/antonyt/infiniteviewpager/InfiniteViewPager;

    invoke-virtual {v0, p1}, Lcom/antonyt/infiniteviewpager/InfiniteViewPager;->setSixWeeksInCalendar(Z)V

    .line 897
    return-void
.end method

.method public setTextColorForDate(ILjava/util/Date;)V
    .locals 3
    .param p1, "textColorRes"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 484
    invoke-static {p2}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v0

    .line 485
    .local v0, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method

.method public setTextColorForDateTime(ILhirondelle/date4j/DateTime;)V
    .locals 2
    .param p1, "textColorRes"    # I
    .param p2, "dateTime"    # Lhirondelle/date4j/DateTime;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public setTextColorForDateTimes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lhirondelle/date4j/DateTime;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "textColorForDateTimeMap":Ljava/util/Map;, "Ljava/util/Map<Lhirondelle/date4j/DateTime;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 481
    return-void
.end method

.method public setTextColorForDates(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Date;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "textColorForDateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Date;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 468
    :cond_0
    return-void

    .line 461
    :cond_1
    iget-object v3, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 463
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 464
    .local v0, "date":Ljava/util/Date;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 465
    .local v2, "resource":Ljava/lang/Integer;
    invoke-static {v0}, Lcom/roomorama/caldroid/CalendarHelper;->convertDateToDateTime(Ljava/util/Date;)Lhirondelle/date4j/DateTime;

    move-result-object v1

    .line 466
    .local v1, "dateTime":Lhirondelle/date4j/DateTime;
    iget-object v4, p0, Lcom/roomorama/caldroid/CaldroidFragment;->textColorForDateTimeMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setThemeResource(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1221
    iput p1, p0, Lcom/roomorama/caldroid/CaldroidFragment;->themeResource:I

    .line 1222
    return-void
.end method
