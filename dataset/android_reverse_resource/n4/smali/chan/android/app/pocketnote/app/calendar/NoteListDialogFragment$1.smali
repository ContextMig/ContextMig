.class Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;
.super Ljava/lang/Object;
.source "NoteListDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7059da58cbd5d198L

    const-string v2, "chan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->$jacocoInit()[Z

    move-result-object v1

    .line 69
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    iget-object v0, v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->listener:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;

    if-nez v0, :cond_0

    aput-boolean v3, v1, v3

    .line 72
    :goto_0
    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 70
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    iget-object v2, v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->listener:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;

    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->access$000(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/Note;

    invoke-interface {v2, v0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;->onEditNote(Lchan/android/app/pocketnote/app/Note;)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
