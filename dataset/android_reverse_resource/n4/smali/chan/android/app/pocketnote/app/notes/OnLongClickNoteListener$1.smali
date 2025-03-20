.class Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;
.super Ljava/lang/Object;
.source "OnLongClickNoteListener.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;

.field final synthetic val$note:Lchan/android/app/pocketnote/app/Note;

.field final synthetic val$options:Ljava/util/List;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7fbb7bb2414425adL    # -2.282571023663567E-307

    const-string v2, "chan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;Ljava/util/List;Lchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->val$options:Ljava/util/List;

    iput-object p3, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPick(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->val$options:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;

    aput-boolean v4, v1, v4

    .line 61
    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;

    iget-object v2, v2, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->val$note:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v0, v2, v3}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;->choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 62
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;->this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;

    iget-object v0, v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    return-void
.end method
