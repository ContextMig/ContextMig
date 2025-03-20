.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;

.field final synthetic val$c:Ljava/util/Calendar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1e15db7f42f0316L

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$14$1"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;Ljava/util/Calendar;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->$jacocoInit()[Z

    move-result-object v0

    .line 486
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 10

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->$jacocoInit()[Z

    move-result-object v6

    .line 489
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 490
    new-instance v0, Lorg/joda/time/DateTime;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v6, v1

    .line 491
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1200(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0}, Lchan/android/app/pocketnote/util/DateTimeUtility;->getReminderReadableDate(Lorg/joda/time/DateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    .line 492
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->this$1:Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;

    iget-object v0, v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1000(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v6, v3

    .line 493
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    aput-boolean v5, v6, v4

    .line 494
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 495
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    const/16 v5, 0xb

    const/4 v7, 0x7

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 496
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$14$1;->val$c:Ljava/util/Calendar;

    const/16 v7, 0xc

    const/16 v8, 0x8

    const/4 v9, 0x1

    aput-boolean v9, v6, v8

    .line 497
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v7, 0x9

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 492
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 498
    const/16 v0, 0xa

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method
