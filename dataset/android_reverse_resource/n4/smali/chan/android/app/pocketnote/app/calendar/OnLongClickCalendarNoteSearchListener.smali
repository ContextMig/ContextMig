.class Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;
.super Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;
.source "OnLongClickCalendarNoteSearchListener.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x67dea12ca6d7ff5cL    # 2.1835261637860518E192

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 15
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->$jacocoInit()[Z

    move-result-object v1

    .line 19
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->fragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    aput-boolean v6, v1, v6

    .line 20
    iget-object v2, v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->adapterSearch:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v2, p3}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/Note;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v6, v1, v3

    .line 21
    invoke-virtual {p0, v2}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->getAvailableOptions(Lchan/android/app/pocketnote/app/Note;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    aput-boolean v6, v1, v4

    .line 22
    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->getOptionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->newInstance(Ljava/lang/String;Ljava/util/List;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    move-result-object v4

    const/4 v5, 0x4

    aput-boolean v6, v1, v5

    .line 23
    new-instance v5, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener$1;

    invoke-direct {v5, p0, v3, v0, v2}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener$1;-><init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;Ljava/util/List;Lchan/android/app/pocketnote/app/calendar/CalendarFragment;Lchan/android/app/pocketnote/app/Note;)V

    invoke-virtual {v4, v5}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->setPickItemListener(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;)V

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 31
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteSearchListener;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "dialog"

    invoke-virtual {v4, v0, v2}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    return v6
.end method
