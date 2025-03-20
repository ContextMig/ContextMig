.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;
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

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7ecf92c8a8d0cc91L    # -5.988426610120141E-303

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$13"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->$jacocoInit()[Z

    move-result-object v0

    .line 454
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->$jacocoInit()[Z

    move-result-object v6

    .line 457
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    aput-boolean v5, v6, v5

    .line 458
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    new-instance v2, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;

    invoke-direct {v2, p0, v4}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13$1;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity$13;Ljava/util/Calendar;)V

    const/16 v3, 0xb

    const/4 v7, 0x2

    aput-boolean v5, v6, v7

    .line 472
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v7, 0xc

    const/4 v8, 0x3

    aput-boolean v5, v6, v8

    .line 473
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    const/4 v1, 0x4

    aput-boolean v5, v6, v1

    .line 476
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 477
    const/4 v0, 0x5

    aput-boolean v5, v6, v0

    return-void
.end method
