.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->displayListDialog(IIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

.field final synthetic val$d:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

.field final synthetic val$day:I

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1f8075d647686c12L    # 5.994459597367308E-157

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$10"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->$jacocoInit()[Z

    move-result-object v0

    .line 400
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iput p2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$day:I

    iput p3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$month:I

    iput p4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$year:I

    iput-object p5, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$d:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 6

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->$jacocoInit()[Z

    move-result-object v0

    .line 408
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$day:I

    iget v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$month:I

    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$year:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$600(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/Note;)V

    .line 409
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->$jacocoInit()[Z

    move-result-object v0

    .line 404
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onEditNote(Lchan/android/app/pocketnote/app/Note;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->$jacocoInit()[Z

    move-result-object v0

    .line 413
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v5, v0, v1

    .line 414
    new-instance v1, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;-><init>()V

    const/4 v2, 0x4

    aput-boolean v5, v0, v2

    .line 415
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v1, v2, v3}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    .line 416
    new-instance v2, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10$1;

    invoke-direct {v2, p0, v1, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10$1;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;Lchan/android/app/pocketnote/app/Note;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->setOnPasswordEnterListener(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;)V

    .line 427
    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 431
    :goto_0
    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    return-void

    .line 428
    :cond_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$d:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->dismiss()V

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    .line 429
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$day:I

    iget v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$month:I

    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$year:I

    invoke-static {v1, v2, v3, v4, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$600(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/Note;)V

    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    goto :goto_0
.end method

.method public onNotesChanged()V
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->$jacocoInit()[Z

    move-result-object v0

    .line 435
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$month:I

    iget v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$10;->val$year:I

    invoke-static {v1, v2, v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$500(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;II)V

    .line 436
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
