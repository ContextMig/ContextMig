.class Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;
.super Ljava/lang/Object;
.source "OnLongClickCalendarNoteListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;,
        Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x750563e13826e2bbL    # -8.86106727508452E-256

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->fragment:Landroid/support/v4/app/Fragment;

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected getAvailableOptions(Lchan/android/app/pocketnote/app/Note;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchan/android/app/pocketnote/app/Note;",
            ")",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->$jacocoInit()[Z

    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-boolean v4, v1, v4

    .line 30
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->UNCHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    :goto_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 31
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->UNLOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 32
    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->TRASH:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 33
    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->EMAIL:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    return-object v2

    .line 30
    :cond_0
    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->CHECK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/4 v3, 0x3

    aput-boolean v4, v1, v3

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->LOCK:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    const/4 v3, 0x6

    aput-boolean v4, v1, v3

    goto :goto_1
.end method

.method public getOptionItems(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->$jacocoInit()[Z

    move-result-object v2

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    aput-boolean v7, v2, v1

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v1, 0xb

    aput-boolean v7, v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    const/16 v1, 0xc

    aput-boolean v7, v2, v1

    .line 40
    new-instance v5, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    iget v6, v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->iconId:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xd

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 42
    :cond_0
    const/16 v1, 0xe

    aput-boolean v7, v2, v1

    return-object v3
.end method

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

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->fragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    const/16 v2, 0xf

    aput-boolean v6, v1, v2

    .line 48
    iget-object v2, v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v2, p3}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/Note;

    move-result-object v2

    const/16 v3, 0x10

    aput-boolean v6, v1, v3

    .line 49
    invoke-virtual {p0, v2}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->getAvailableOptions(Lchan/android/app/pocketnote/app/Note;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x11

    aput-boolean v6, v1, v4

    .line 50
    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->getOptionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->newInstance(Ljava/lang/String;Ljava/util/List;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    move-result-object v4

    const/16 v5, 0x12

    aput-boolean v6, v1, v5

    .line 51
    new-instance v5, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$1;

    invoke-direct {v5, p0, v3, v0, v2}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$1;-><init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;Ljava/util/List;Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;Lchan/android/app/pocketnote/app/Note;)V

    invoke-virtual {v4, v5}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->setPickItemListener(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;)V

    const/16 v0, 0x13

    aput-boolean v6, v1, v0

    .line 59
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "dialog"

    invoke-virtual {v4, v0, v2}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    const/16 v0, 0x14

    aput-boolean v6, v1, v0

    return v6
.end method
