.class Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;
.super Ljava/lang/Object;
.source "ReminderActivity.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
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

    sget-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x63c9fc85da862c01L    # -8.900475810854422E-173

    const-string v2, "chan/android/app/pocketnote/app/reminder/ReminderActivity$1"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 140
    iput-object p1, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEnter(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->$jacocoInit()[Z

    move-result-object v1

    .line 143
    if-nez p1, :cond_0

    aput-boolean v4, v1, v4

    .line 162
    :goto_0
    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    return-void

    .line 143
    :cond_0
    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 144
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v0

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getReminder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->fromJson(Ljava/lang/String;)Lchan/android/app/pocketnote/app/reminder/Reminder;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 146
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/Reminder;->getType()Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    move-result-object v0

    sget-object v2, Lchan/android/app/pocketnote/app/reminder/Reminder$Type;->PIN_TO_STATUS_BAR:Lchan/android/app/pocketnote/app/reminder/Reminder$Type;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 152
    :goto_1
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x8

    aput-boolean v4, v1, v2

    .line 153
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v2

    const/16 v3, 0x9

    aput-boolean v4, v1, v3

    .line 154
    iget-object v3, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v3

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getId(Lchan/android/app/pocketnote/app/Note;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 157
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v0

    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v2

    invoke-virtual {v0, v2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->removeReminder(Lchan/android/app/pocketnote/app/Note;)V

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 160
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->finish()V

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 147
    iget-object v0, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/reminder/NoteReminderScheduler;->getScheduler(Landroid/content/Context;)Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    .line 148
    iget-object v2, p0, Lchan/android/app/pocketnote/app/reminder/ReminderActivity$1;->this$0:Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;->access$300(Lchan/android/app/pocketnote/app/reminder/ReminderActivity;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v2

    invoke-virtual {v0, v2}, Lchan/android/app/pocketnote/app/reminder/AbstractReminderScheduler;->cancel(Lchan/android/app/pocketnote/app/Note;)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    goto :goto_1
.end method
