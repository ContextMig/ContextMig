.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;

.field final synthetic val$c:Ljava/util/Calendar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x20f2e116c9856d3eL    # 5.767491942274738E-150

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$13$1"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;Ljava/util/Calendar;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->$jacocoInit()[Z

    move-result-object v0

    .line 459
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->$jacocoInit()[Z

    move-result-object v6

    .line 462
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    aput-boolean v9, v6, v9

    .line 463
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;

    iget-object v0, v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    aput-boolean v9, v6, v7

    .line 464
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    const/4 v3, 0x3

    aput-boolean v9, v6, v3

    .line 465
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    const/4 v4, 0x4

    aput-boolean v9, v6, v4

    .line 466
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    const/16 v5, 0xb

    aput-boolean v9, v6, v8

    .line 467
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->val$c:Ljava/util/Calendar;

    const/16 v7, 0xc

    const/4 v8, 0x6

    aput-boolean v9, v6, v8

    .line 468
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x7

    aput-boolean v9, v6, v7

    .line 463
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    const/16 v0, 0x8

    aput-boolean v9, v6, v0

    .line 469
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;

    iget-object v0, v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p2, p3}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableTime(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 470
    const/16 v0, 0x9

    aput-boolean v9, v6, v0

    return-void
.end method
