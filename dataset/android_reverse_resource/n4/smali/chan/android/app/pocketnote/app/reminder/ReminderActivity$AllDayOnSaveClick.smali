.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllDayOnSaveClick"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final SPECIFIC_DATE_INDEX:J = 0x7L

.field private static final TIME_BUFFER:J = 0x3e8L


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x30cde404b5ba8d00L    # 1.321682413429346E-73

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 623
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 623
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 634
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->REPETITIONS_VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$2100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v3, v1, v2

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 635
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$2200(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 638
    .local v8, "whenIndex":I
    const-wide/16 v4, 0x0

    .line 639
    .local v4, "begin":J
    int-to-long v6, v8

    const-wide/16 v12, 0x7

    cmp-long v1, v6, v12

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 640
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 646
    :goto_0
    const-wide/16 v6, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 647
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$800(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 651
    :goto_1
    iget-object v9, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    new-instance v1, Lchan/android/app/pocketnote/app/reminder/Reminder;

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->ALL_DAY:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    invoke-direct/range {v1 .. v8}, Lchan/android/app/pocketnote/app/reminder/Reminder;-><init>(Lchan/android/app/pocketnote/app/reminder/Reminder$Type;Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;JJI)V

    invoke-static {v9, v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$2000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/Reminder;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 652
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1700(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    .line 653
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void

    .line 642
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    add-long/2addr v6, v12

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v8

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    add-long v4, v6, v12

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 647
    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 648
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$AllDayOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .local v10, "end":J
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    move-wide v6, v10

    goto :goto_1
.end method
