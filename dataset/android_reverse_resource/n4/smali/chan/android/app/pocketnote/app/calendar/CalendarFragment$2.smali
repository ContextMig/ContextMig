.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1205ed0ea94f79fL

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$2"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1, p3}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/Note;

    move-result-object v1

    aput-boolean v6, v0, v6

    .line 175
    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 176
    new-instance v2, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-direct {v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;-><init>()V

    const/4 v3, 0x3

    aput-boolean v6, v0, v3

    .line 177
    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "password_dialog"

    invoke-virtual {v2, v3, v4}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-boolean v6, v0, v3

    .line 178
    new-instance v3, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;

    invoke-direct {v3, p0, v2, v1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2$1;-><init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;Lchan/android/app/pocketnote/app/Note;)V

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->setOnPasswordEnterListener(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;)V

    .line 189
    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 192
    :goto_0
    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getDay()I

    move-result v3

    iget-object v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v4}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$300(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v4

    iget-object v5, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$2;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v5}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$400(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v5

    invoke-static {v2, v3, v4, v5, v1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$600(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/Note;)V

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
