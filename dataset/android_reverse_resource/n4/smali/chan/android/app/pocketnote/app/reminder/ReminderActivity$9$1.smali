.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;

.field final synthetic val$c:Ljava/util/Calendar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5b6334952df2ccf4L    # 1.7040074925841523E132

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$9$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;Ljava/util/Calendar;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->$jacocoInit()[Z

    move-result-object v0

    .line 362
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->val$c:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->$jacocoInit()[Z

    move-result-object v0

    .line 365
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->val$c:Ljava/util/Calendar;

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    aput-boolean v3, v0, v3

    .line 366
    new-instance v1, Lorg/joda/time/DateTime;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->val$c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 367
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$600(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v1}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 370
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$9;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 371
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method
