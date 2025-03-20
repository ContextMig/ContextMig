.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;

.field final synthetic val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

.field final synthetic val$note:Lchan/android/app/pocketnote/app/Note;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5e1b5c18914b20fL    # -1.718206993271283E280

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$2$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->this$1:Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    iput-object p3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEnter(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    invoke-static {p1}, Lchan/android/app/pocketnote/app/AppPreferences;->hasCorrectPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v6, v0, v6

    .line 182
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->dismiss()V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 183
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->this$1:Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getDay()I

    move-result v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->this$1:Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;

    iget-object v3, v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$300(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v3

    iget-object v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->this$1:Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;

    iget-object v4, v4, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v4}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$400(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v4

    iget-object v5, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-static {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$600(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/Note;)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    .line 187
    :goto_0
    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;->val$d:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    const-string v2, "Your password is incorrect!"

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->showErrorMessage(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
