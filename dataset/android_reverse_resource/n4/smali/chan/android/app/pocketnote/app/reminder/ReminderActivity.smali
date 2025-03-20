.class public Lchan/android/app/pocketnote/app/reminder/ReminderActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;,
        Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;,
        Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;,
        Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final FLIPPER_ALL_DAY:I = 0x0

.field private static final FLIPPER_PIN_STATUS:I = 0x2

.field private static final FLIPPER_TIME_ALARM:I = 0x1

.field static final REPETITIONS:[Ljava/lang/String;

.field static final REPETITIONS_VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

.field static final TIMES:[Ljava/lang/String;

.field static final TIMES_VALUES:[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

.field static final TYPES:[Ljava/lang/String;


# instance fields
.field private allDayButtonDatePicker:Landroid/widget/Button;

.field private allDayButtonEnd:Landroid/widget/Button;

.field private allDaySpinnerRepetition:Landroid/widget/Spinner;

.field private allDaySpinnerWhen:Landroid/widget/Spinner;

.field private allDayTextViewEnd:Landroid/widget/TextView;

.field private buttonCancel:Landroid/widget/Button;

.field private buttonReset:Landroid/widget/Button;

.field private buttonSave:Landroid/widget/Button;

.field private calendarEnd:Ljava/util/Calendar;

.field private calendarWhen:Ljava/util/Calendar;

.field private editingNote:Lchan/android/app/pocketnote/app/Note;

.field private notificationCenter:Lchan/android/app/pocketnote/app/reminder/NotificationCenter;

.field private final saveClickHandlers:[Landroid/view/View$OnClickListener;

.field private spinnerType:Landroid/widget/Spinner;

.field private textViewType:Landroid/widget/TextView;

.field private timeAlarmButtonDatePicker:Landroid/widget/Button;

.field private timeAlarmButtonEnd:Landroid/widget/Button;

.field private timeAlarmButtonTimePicker:Landroid/widget/Button;

.field private timeAlarmSpinnerRepetition:Landroid/widget/Spinner;

.field private timeAlarmSpinnerWhen:Landroid/widget/Spinner;

.field private timeAlarmTextViewEnd:Landroid/widget/TextView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1b0eb8613dce2861L

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity"

    const/16 v3, 0x9e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    new-array v1, v7, [Ljava/lang/String;

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->ALL_DAY:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->description:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->TIME_ALARM:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->description:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->description:Ljava/lang/String;

    aput-object v2, v1, v6

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TYPES:[Ljava/lang/String;

    .line 32
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->HOURLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->DAILY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    aput-object v2, v1, v6

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->WEEKLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->MONTHLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->YEARLY:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->REPETITIONS:[Ljava/lang/String;

    .line 40
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_5:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_10:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_15:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v2, v1, v6

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_20:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_25:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_30:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->MINUTE_45:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_2:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_3:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_6:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_12:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->HOUR_24:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->SPECIFIC:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TIMES:[Ljava/lang/String;

    const/16 v1, 0x9b

    aput-boolean v4, v0, v1

    .line 59
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->values()[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TIMES_VALUES:[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    const/16 v1, 0x9c

    aput-boolean v4, v0, v1

    .line 60
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->values()[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->REPETITIONS_VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/16 v1, 0x9d

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    aput-boolean v3, v0, v5

    .line 64
    new-array v1, v7, [Landroid/view/View$OnClickListener;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;

    invoke-direct {v2, p0, v4}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;)V

    aput-object v2, v1, v5

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;

    invoke-direct {v2, p0, v4}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;)V

    aput-object v2, v1, v3

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;

    invoke-direct {v2, p0, v4}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;)V

    aput-object v2, v1, v6

    iput-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->saveClickHandlers:[Landroid/view/View$OnClickListener;

    aput-boolean v3, v0, v3

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarWhen:Ljava/util/Calendar;

    aput-boolean v3, v0, v6

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarEnd:Ljava/util/Calendar;

    aput-boolean v3, v0, v7

    return-void
.end method

.method static synthetic access$1000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarWhen:Ljava/util/Calendar;

    const/16 v2, 0x8e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarEnd:Ljava/util/Calendar;

    const/16 v2, 0x8f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1200(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonDatePicker:Landroid/widget/Button;

    const/16 v2, 0x90

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonTimePicker:Landroid/widget/Button;

    const/16 v2, 0x91

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1400(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmTextViewEnd:Landroid/widget/TextView;

    const/16 v2, 0x92

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1500(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonEnd:Landroid/widget/Button;

    const/16 v2, 0x93

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1600(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/reminder/NotificationCenter;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->notificationCenter:Lchan/android/app/pocketnote/app/reminder/NotificationCenter;

    const/16 v2, 0x94

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1700(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->quit()V

    const/16 v1, 0x95

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1800(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerRepetition:Landroid/widget/Spinner;

    const/16 v2, 0x96

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1900(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerWhen:Landroid/widget/Spinner;

    const/16 v2, 0x97

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$2000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/Reminder;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->schedule(Lchan/android/app/pocketnote/app/reminder/Reminder;)V

    const/16 v1, 0x98

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$2100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerRepetition:Landroid/widget/Spinner;

    const/16 v2, 0x99

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$2200(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerWhen:Landroid/widget/Spinner;

    const/16 v2, 0x9a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    const/16 v2, 0x87

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/ViewFlipper;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    const/16 v2, 0x88

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)[Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->saveClickHandlers:[Landroid/view/View$OnClickListener;

    const/16 v2, 0x89

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonDatePicker:Landroid/widget/Button;

    const/16 v2, 0x8a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayTextViewEnd:Landroid/widget/TextView;

    const/16 v2, 0x8b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$800(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonEnd:Landroid/widget/Button;

    const/16 v2, 0x8c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$900(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->toggleEndDateView(Landroid/view/View;Landroid/view/View;I)V

    const/16 v1, 0x8d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private hasReminder()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 132
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/TextUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x9

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0xb

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0xa

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method private populateAllDay(Lchan/android/app/pocketnote/app/reminder/Reminder;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 268
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerRepetition:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getRepetition()Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    move-result-object v2

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v1, 0x39

    aput-boolean v6, v0, v1

    .line 269
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerWhen:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getWhenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v1, 0x3a

    aput-boolean v6, v0, v1

    .line 270
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerWhen:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->SPECIFIC:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3b

    aput-boolean v6, v0, v1

    .line 275
    :goto_0
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/16 v1, 0x40

    aput-boolean v6, v0, v1

    .line 276
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonEnd:Landroid/widget/Button;

    const-string v2, "Never"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x41

    aput-boolean v6, v0, v1

    .line 282
    :goto_1
    const/16 v1, 0x45

    aput-boolean v6, v0, v1

    return-void

    .line 270
    :cond_0
    const/16 v1, 0x3c

    aput-boolean v6, v0, v1

    .line 271
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getBegin()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    const/16 v2, 0x3d

    aput-boolean v6, v0, v2

    .line 272
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarWhen:Ljava/util/Calendar;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x3e

    aput-boolean v6, v0, v2

    .line 273
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonDatePicker:Landroid/widget/Button;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x3f

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 278
    :cond_1
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getEnd()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    const/16 v2, 0x42

    aput-boolean v6, v0, v2

    .line 279
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarEnd:Ljava/util/Calendar;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x43

    aput-boolean v6, v0, v2

    .line 280
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonEnd:Landroid/widget/Button;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x44

    aput-boolean v6, v0, v1

    goto :goto_1
.end method

.method private populateTimeAlarm(Lchan/android/app/pocketnote/app/reminder/Reminder;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 285
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerRepetition:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getRepetition()Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    move-result-object v2

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v1, 0x46

    aput-boolean v6, v0, v1

    .line 286
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerWhen:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getWhenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v1, 0x47

    aput-boolean v6, v0, v1

    .line 287
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerWhen:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TIMES:[Ljava/lang/String;

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TIMES:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x48

    aput-boolean v6, v0, v1

    .line 293
    :goto_0
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/16 v1, 0x4e

    aput-boolean v6, v0, v1

    .line 294
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonEnd:Landroid/widget/Button;

    const-string v2, "Never"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x4f

    aput-boolean v6, v0, v1

    .line 300
    :goto_1
    const/16 v1, 0x53

    aput-boolean v6, v0, v1

    return-void

    .line 287
    :cond_0
    const/16 v1, 0x49

    aput-boolean v6, v0, v1

    .line 288
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getBegin()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    const/16 v2, 0x4a

    aput-boolean v6, v0, v2

    .line 289
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarWhen:Ljava/util/Calendar;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x4b

    aput-boolean v6, v0, v2

    .line 290
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonDatePicker:Landroid/widget/Button;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x4c

    aput-boolean v6, v0, v2

    .line 291
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonTimePicker:Landroid/widget/Button;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v3

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v1

    invoke-static {v3, v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x4d

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 296
    :cond_1
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getEnd()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    const/16 v2, 0x50

    aput-boolean v6, v0, v2

    .line 297
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->calendarEnd:Ljava/util/Calendar;

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0x51

    aput-boolean v6, v0, v2

    .line 298
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonEnd:Landroid/widget/Button;

    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x52

    aput-boolean v6, v0, v1

    goto :goto_1
.end method

.method private quit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 535
    const-string v1, "Reminder is set"

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->toast(Ljava/lang/String;)V

    const/16 v1, 0x80

    aput-boolean v2, v0, v1

    .line 536
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->finish()V

    .line 537
    const/16 v1, 0x81

    aput-boolean v2, v0, v1

    return-void
.end method

.method private schedule(Lchan/android/app/pocketnote/app/reminder/Reminder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 544
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v1

    const/16 v2, 0x83

    aput-boolean v5, v0, v2

    .line 545
    invoke-static {p0}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->getScheduler(Landroid/content/Context;)Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;

    move-result-object v2

    const/16 v3, 0x84

    aput-boolean v5, v0, v3

    .line 546
    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-static {p1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->toJson(Lchan/android/app/pocketnote/app/reminder/Reminder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->addReminder(Lchan/android/app/pocketnote/app/Note;Ljava/lang/String;)V

    const/16 v1, 0x85

    aput-boolean v5, v0, v1

    .line 547
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v2, v1}, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->schedule(Lchan/android/app/pocketnote/app/Note;)V

    .line 548
    const/16 v1, 0x86

    aput-boolean v5, v0, v1

    return-void
.end method

.method private setUpAllDayUi()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 313
    const v0, 0x7f0c0099

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerWhen:Landroid/widget/Spinner;

    const/16 v0, 0x5a

    aput-boolean v6, v1, v0

    .line 314
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayTextViewEnd:Landroid/widget/TextView;

    const/16 v0, 0x5b

    aput-boolean v6, v1, v0

    .line 315
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonEnd:Landroid/widget/Button;

    const/16 v0, 0x5c

    aput-boolean v6, v1, v0

    .line 316
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerRepetition:Landroid/widget/Spinner;

    const/16 v0, 0x5d

    aput-boolean v6, v1, v0

    .line 317
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonDatePicker:Landroid/widget/Button;

    const/16 v0, 0x5e

    aput-boolean v6, v1, v0

    .line 319
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonDatePicker:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v0, 0x5f

    aput-boolean v6, v1, v0

    .line 321
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    const/16 v2, 0x60

    aput-boolean v6, v1, v2

    .line 322
    invoke-static {v0}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getAllDaysCycleFrom(Lorg/joda/time/DateTime;)[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x61

    aput-boolean v6, v1, v3

    .line 323
    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerWhen:Landroid/widget/Spinner;

    new-instance v4, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v3, 0x62

    aput-boolean v6, v1, v3

    .line 324
    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerWhen:Landroid/widget/Spinner;

    new-instance v4, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;

    invoke-direct {v4, p0, v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$7;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v2, 0x63

    aput-boolean v6, v1, v2

    .line 340
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayTextViewEnd:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x64

    aput-boolean v6, v1, v2

    .line 341
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonEnd:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x65

    aput-boolean v6, v1, v2

    .line 343
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerRepetition:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    sget-object v4, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->REPETITIONS:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v2, 0x66

    aput-boolean v6, v1, v2

    .line 344
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDaySpinnerRepetition:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$8;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v2, 0x67

    aput-boolean v6, v1, v2

    .line 356
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonDatePicker:Landroid/widget/Button;

    invoke-static {v0}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x68

    aput-boolean v6, v1, v0

    .line 357
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonDatePicker:Landroid/widget/Button;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x69

    aput-boolean v6, v1, v0

    .line 381
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonEnd:Landroid/widget/Button;

    const-string v2, "Never"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x6a

    aput-boolean v6, v1, v0

    .line 382
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->allDayButtonEnd:Landroid/widget/Button;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$10;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$10;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const/16 v0, 0x6b

    aput-boolean v6, v1, v0

    return-void
.end method

.method private setUpTimeAlarmUi()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 406
    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerWhen:Landroid/widget/Spinner;

    const/16 v0, 0x6c

    aput-boolean v5, v1, v0

    .line 407
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonDatePicker:Landroid/widget/Button;

    const/16 v0, 0x6d

    aput-boolean v5, v1, v0

    .line 408
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonTimePicker:Landroid/widget/Button;

    const/16 v0, 0x6e

    aput-boolean v5, v1, v0

    .line 409
    const v0, 0x7f0c00a1

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerRepetition:Landroid/widget/Spinner;

    const/16 v0, 0x6f

    aput-boolean v5, v1, v0

    .line 410
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmTextViewEnd:Landroid/widget/TextView;

    const/16 v0, 0x70

    aput-boolean v5, v1, v0

    .line 411
    const v0, 0x7f0c00a3

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonEnd:Landroid/widget/Button;

    const/16 v0, 0x71

    aput-boolean v5, v1, v0

    .line 413
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmTextViewEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x72

    aput-boolean v5, v1, v0

    .line 414
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonEnd:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v0, 0x73

    aput-boolean v5, v1, v0

    .line 415
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonDatePicker:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v0, 0x74

    aput-boolean v5, v1, v0

    .line 416
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonTimePicker:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v0, 0x75

    aput-boolean v5, v1, v0

    .line 418
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerWhen:Landroid/widget/Spinner;

    new-instance v2, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TIMES:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0x76

    aput-boolean v5, v1, v0

    .line 419
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerWhen:Landroid/widget/Spinner;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$11;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0x77

    aput-boolean v5, v1, v0

    .line 437
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerRepetition:Landroid/widget/Spinner;

    new-instance v2, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->REPETITIONS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0x78

    aput-boolean v5, v1, v0

    .line 438
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmSpinnerRepetition:Landroid/widget/Spinner;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$12;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$12;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0x79

    aput-boolean v5, v1, v0

    .line 452
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    const/16 v2, 0x7a

    aput-boolean v5, v1, v2

    .line 453
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonTimePicker:Landroid/widget/Button;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getHourOfDay()I

    move-result v3

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMinuteOfHour()I

    move-result v4

    invoke-static {v3, v4}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableTime(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x7b

    aput-boolean v5, v1, v2

    .line 454
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonTimePicker:Landroid/widget/Button;

    new-instance v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x7c

    aput-boolean v5, v1, v2

    .line 480
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonDatePicker:Landroid/widget/Button;

    invoke-static {v0}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x7d

    aput-boolean v5, v1, v0

    .line 481
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonDatePicker:Landroid/widget/Button;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x7e

    aput-boolean v5, v1, v0

    .line 508
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->timeAlarmButtonEnd:Landroid/widget/Button;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    const/16 v0, 0x7f

    aput-boolean v5, v1, v0

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 540
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 541
    const/16 v1, 0x82

    aput-boolean v2, v0, v1

    return-void
.end method

.method private toggleEndDateView(Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 303
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->REPETITIONS_VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    aget-object v1, v1, p3

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x54

    aput-boolean v3, v0, v1

    .line 304
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x55

    aput-boolean v3, v0, v1

    .line 305
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x56

    aput-boolean v3, v0, v1

    .line 310
    :goto_0
    const/16 v1, 0x59

    aput-boolean v3, v0, v1

    return-void

    .line 307
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x57

    aput-boolean v3, v0, v1

    .line 308
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x58

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 177
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0x11

    aput-boolean v4, v1, v0

    .line 178
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->setContentView(I)V

    const/16 v0, 0x12

    aput-boolean v4, v1, v0

    .line 180
    new-instance v0, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;

    invoke-direct {v0}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;-><init>()V

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->notificationCenter:Lchan/android/app/pocketnote/app/reminder/NotificationCenter;

    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    .line 183
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    const/16 v0, 0x14

    aput-boolean v4, v1, v0

    .line 184
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->spinnerType:Landroid/widget/Spinner;

    const/16 v0, 0x15

    aput-boolean v4, v1, v0

    .line 185
    const v0, 0x7f0c00a4

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->buttonCancel:Landroid/widget/Button;

    const/16 v0, 0x16

    aput-boolean v4, v1, v0

    .line 186
    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->buttonReset:Landroid/widget/Button;

    const/16 v0, 0x17

    aput-boolean v4, v1, v0

    .line 187
    const v0, 0x7f0c00a6

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->buttonSave:Landroid/widget/Button;

    const/16 v0, 0x18

    aput-boolean v4, v1, v0

    .line 188
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    const/16 v0, 0x19

    aput-boolean v4, v1, v0

    .line 191
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$2;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$2;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1a

    aput-boolean v4, v1, v0

    .line 198
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->spinnerType:Landroid/widget/Spinner;

    new-instance v2, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TYPES:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0x1b

    aput-boolean v4, v1, v0

    .line 199
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->spinnerType:Landroid/widget/Spinner;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$3;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$3;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0x1c

    aput-boolean v4, v1, v0

    .line 211
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->buttonCancel:Landroid/widget/Button;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$4;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$4;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1d

    aput-boolean v4, v1, v0

    .line 218
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->buttonReset:Landroid/widget/Button;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$5;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1e

    aput-boolean v4, v1, v0

    .line 227
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->buttonSave:Landroid/widget/Button;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$6;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$6;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1f

    aput-boolean v4, v1, v0

    .line 234
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->setUpAllDayUi()V

    const/16 v0, 0x20

    aput-boolean v4, v1, v0

    .line 235
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->setUpTimeAlarmUi()V

    const/16 v0, 0x21

    aput-boolean v4, v1, v0

    .line 238
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    aput-boolean v4, v1, v0

    .line 265
    :goto_0
    const/16 v0, 0x38

    aput-boolean v4, v1, v0

    return-void

    .line 238
    :cond_0
    const/16 v0, 0x23

    aput-boolean v4, v1, v0

    .line 239
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "note_bundle_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/Note;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    const/16 v0, 0x24

    aput-boolean v4, v1, v0

    .line 240
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/TextUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x25

    aput-boolean v4, v1, v0

    .line 241
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->fromJson(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder;

    move-result-object v0

    const/16 v2, 0x26

    aput-boolean v4, v1, v2

    .line 243
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getType()Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    if-ne v2, v3, :cond_1

    const/16 v2, 0x27

    aput-boolean v4, v1, v2

    .line 244
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->spinnerType:Landroid/widget/Spinner;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v2, 0x28

    aput-boolean v4, v1, v2

    .line 253
    :goto_1
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x30

    aput-boolean v4, v1, v0

    .line 254
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    const v2, 0x7f0200ad

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v0, 0x31

    aput-boolean v4, v1, v0

    .line 255
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v0, 0x32

    aput-boolean v4, v1, v0

    .line 260
    :goto_2
    const/16 v0, 0x35

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getType()Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->ALL_DAY:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x29

    aput-boolean v4, v1, v2

    .line 246
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->spinnerType:Landroid/widget/Spinner;

    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v2, 0x2a

    aput-boolean v4, v1, v2

    .line 247
    invoke-direct {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->populateAllDay(Lchan/android/app/pocketnote/app/reminder/Reminder;)V

    const/16 v2, 0x2b

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getType()Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    move-result-object v2

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->TIME_ALARM:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    if-eq v2, v3, :cond_3

    const/16 v2, 0x2c

    aput-boolean v4, v1, v2

    goto :goto_1

    :cond_3
    const/16 v2, 0x2d

    aput-boolean v4, v1, v2

    .line 249
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->spinnerType:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v2, 0x2e

    aput-boolean v4, v1, v2

    .line 250
    invoke-direct {p0, v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->populateTimeAlarm(Lchan/android/app/pocketnote/app/reminder/Reminder;)V

    const/16 v2, 0x2f

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 257
    :cond_4
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v0, 0x33

    aput-boolean v4, v1, v0

    .line 258
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v0, 0x34

    aput-boolean v4, v1, v0

    goto :goto_2

    .line 261
    :cond_5
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v0, 0x36

    aput-boolean v4, v1, v0

    .line 262
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->textViewType:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v0, 0x37

    aput-boolean v4, v1, v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 123
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->hasReminder()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 124
    const v2, 0x7f0e0003

    invoke-virtual {v1, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 128
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    return v1

    .line 126
    :cond_0
    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    .line 172
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x10

    aput-boolean v5, v0, v2

    return v1

    .line 139
    :pswitch_0
    new-instance v1, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;

    const-string v2, "Dismiss reminder for this event"

    const-string v3, "Cancel"

    const-string v4, "Yes"

    invoke-direct {v1, v2, v3, v4}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-boolean v5, v0, v2

    .line 140
    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->setOnConfirmListener(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;)V

    const/16 v2, 0xe

    aput-boolean v5, v0, v2

    .line 164
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "dismiss_dialog"

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 165
    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7f0c00c2
        :pswitch_0
    .end packed-switch
.end method
