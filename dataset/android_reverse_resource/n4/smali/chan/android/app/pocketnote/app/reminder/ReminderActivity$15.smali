.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->setUpTimeAlarmUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5e537d228243e896L

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$15"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->$jacocoInit()[Z

    move-result-object v0

    .line 508
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->$jacocoInit()[Z

    move-result-object v6

    .line 511
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    aput-boolean v8, v6, v8

    .line 512
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15$1;

    invoke-direct {v2, p0, v3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15$1;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;Ljava/util/Calendar;)V

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    aput-boolean v8, v6, v7

    .line 524
    invoke-static {v3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    const/4 v5, 0x3

    aput-boolean v8, v6, v5

    .line 525
    invoke-static {v4}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$15;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    const/4 v7, 0x4

    aput-boolean v8, v6, v7

    .line 526
    invoke-static {v5}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1100(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    aput-boolean v8, v6, v9

    .line 528
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 529
    const/4 v0, 0x6

    aput-boolean v8, v6, v0

    return-void
.end method
