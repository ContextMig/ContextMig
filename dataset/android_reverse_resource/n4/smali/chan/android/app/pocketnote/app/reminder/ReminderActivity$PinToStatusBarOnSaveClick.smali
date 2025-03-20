.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;
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
    name = "PinToStatusBarOnSaveClick"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3ae8b4b0211df03fL    # 6.386302854554584E-25

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 583
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 583
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;-><init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->$jacocoInit()[Z

    move-result-object v0

    .line 587
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1600(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/reminder/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/reminder/NotificationCenter;->notifySticky(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)V

    aput-boolean v9, v0, v9

    .line 588
    new-instance v1, Lchan/android/app/pocketnote/app/reminder/Reminder;

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    sget-object v3, Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;->ONE_TIME:Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;

    const/4 v8, 0x0

    move-wide v6, v4

    invoke-direct/range {v1 .. v8}, Lchan/android/app/pocketnote/app/reminder/Reminder;-><init>(Lchan/android/app/pocketnote/app/reminder/Reminder$Type;Lchan/android/app/pocketnote/app/reminder/Reminder$Repetition;JJI)V

    const/4 v2, 0x2

    aput-boolean v9, v0, v2

    .line 589
    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/Reminder;->toJson(Lchan/android/app/pocketnote/app/reminder/Reminder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v9, v0, v2

    .line 590
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v2

    invoke-virtual {v2, v1}, Lchan/android/app/pocketnote/app/Note;->setReminder(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v9, v0, v2

    .line 591
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->addReminder(Lchan/android/app/pocketnote/app/Note;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v9, v0, v1

    .line 592
    iget-object v1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$PinToStatusBarOnSaveClick;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$1700(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V

    .line 593
    const/4 v1, 0x6

    aput-boolean v9, v0, v1

    return-void
.end method
