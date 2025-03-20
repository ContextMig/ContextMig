.class Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;
.super Ljava/lang/Object;
.source "OnLongClickCalendarNoteListener.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x50f8cb201548cd25L    # 1.1759150432106325E82

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;->this$0:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public doWork(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;->$jacocoInit()[Z

    move-result-object v1

    .line 138
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->trash(Lchan/android/app/pocketnote/app/Note;)V

    move-object v0, p1

    .line 139
    check-cast v0, Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;

    aput-boolean v4, v1, v4

    .line 140
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;->this$0:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;

    invoke-interface {v0}, Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;->getNotes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->access$100(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    .line 141
    invoke-interface {v0, v2}, Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;->setNotes(Ljava/util/List;)V

    .line 143
    instance-of v0, v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 147
    :goto_0
    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    return-void

    .line 144
    :cond_0
    check-cast p1, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    const/4 v0, 0x4

    aput-boolean v4, v1, v0

    .line 145
    iget-object v0, p1, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->listener:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;

    invoke-interface {v0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;->onNotesChanged()V

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    goto :goto_0
.end method
