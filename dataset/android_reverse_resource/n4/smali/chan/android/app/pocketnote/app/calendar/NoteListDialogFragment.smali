.class Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "NoteListDialogFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

.field private fragment:Lcom/actionbarsherlock/app/SherlockFragment;

.field public listener:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4cfdf76c5ce6410cL    # -5.479627109906431E-63

    const-string v2, "chan/android/app/pocketnote/app/calendar/NoteListDialogFragment"

    const/16 v3, 0x14

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/actionbarsherlock/app/SherlockFragment;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 28
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 29
    iput-object p2, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->title:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->notes:Ljava/util/List;

    .line 31
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->notes:Ljava/util/List;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getNotes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->getNotes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public notifyAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notifyDataSetChanged()V

    .line 36
    aput-boolean v2, v0, v2

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoInit()[Z

    move-result-object v4

    .line 56
    const v0, 0x7f030024

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const/4 v0, 0x6

    aput-boolean v8, v4, v0

    .line 57
    const v0, 0x7f0c007d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x7

    aput-boolean v8, v4, v1

    .line 58
    const v1, 0x7f0c007c

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8

    aput-boolean v8, v4, v2

    .line 59
    const v2, 0x7f0c007a

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x9

    aput-boolean v8, v4, v3

    .line 60
    const v3, 0x7f0c007b

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    const/16 v6, 0xa

    aput-boolean v8, v4, v6

    .line 63
    iget-object v6, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xb

    aput-boolean v8, v4, v2

    .line 64
    new-instance v2, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->notes:Ljava/util/List;

    invoke-direct {v2, v6, v7}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    const/16 v2, 0xc

    aput-boolean v8, v4, v2

    .line 65
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v2, 0xd

    aput-boolean v8, v4, v2

    .line 66
    new-instance v2, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v2, 0xe

    aput-boolean v8, v4, v2

    .line 74
    new-instance v2, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v2, 0xf

    aput-boolean v8, v4, v2

    .line 75
    new-instance v2, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$2;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$2;-><init>(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x10

    aput-boolean v8, v4, v0

    .line 84
    new-instance v0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$3;

    invoke-direct {v0, p0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$3;-><init>(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x11

    aput-boolean v8, v4, v0

    .line 93
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 94
    const/16 v0, 0x12

    aput-boolean v8, v4, v0

    return-object v5
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1, p1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->setNotes(Ljava/util/List;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 46
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->adapter:Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/calendar/NoteItemAdapter;->notifyDataSetChanged()V

    .line 47
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setOnDialogClickListener(Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment;->listener:Lchan/android/app/pocketnote/app/calendar/NoteListDialogFragment$OnDialogClickListener;

    .line 51
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
