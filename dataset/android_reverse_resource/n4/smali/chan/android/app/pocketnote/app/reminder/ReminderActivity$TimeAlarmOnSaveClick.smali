.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;
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
    name = "TimeAlarmOnSaveClick"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5fd6ded3f823d239L    # 4.791284750656602E153

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 596
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 596
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->$jacocoInit()[Z

    move-result-object v9

    .line 600
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->REPETITIONS_VALUES:[Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1800(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v3, v1, v2

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 601
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1900(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 602
    .local v8, "whenIndex":I
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->TIMES_VALUES:[Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    aget-object v0, v1, v8

    .line 605
    .local v0, "option":Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;
    const-wide/16 v4, 0x0

    .line 606
    .local v4, "begin":J
    sget-object v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->SPECIFIC:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 607
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 613
    :goto_0
    const-wide/16 v6, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 614
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1500(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

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

    aput-boolean v2, v9, v1

    .line 618
    :goto_1
    iget-object v12, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    new-instance v1, Lchan/android/app/pocketnote/app/reminder/Reminder;

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->TIME_ALARM:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    invoke-direct/range {v1 .. v8}, Lchan/android/app/pocketnote/app/reminder/Reminder;-><init>(Lchan/android/app/pocketnote/app/reminder/Reminder$Type;Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;JJI)V

    invoke-static {v12, v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$2000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/Reminder;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 619
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1700(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    .line 620
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    return-void

    .line 609
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOption;->getMilliseconds()J

    move-result-wide v12

    add-long v4, v6, v12

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    goto :goto_0

    .line 614
    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 615
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$TimeAlarmOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .local v10, "end":J
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    move-wide v6, v10

    goto :goto_1
.end method
