.class Lcom/iliakplv/notes/gui/main/NotesListFragment$1;
.super Ljava/lang/Object;
.source "NotesListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/NotesListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4e6f02092474747eL    # -6.154981342482446E-70

    const-string v2, "com/iliakplv/notes/gui/main/NotesListFragment$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

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

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->$jacocoInit()[Z

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$000(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;

    move-result-object v0

    const-string v2, "note_list_note_clicked"

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    aput-boolean v3, v1, v3

    .line 71
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$000(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$100(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/AbstractNote;

    invoke-virtual {v0}, Lcom/iliakplv/notes/notes/AbstractNote;->getId()Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/iliakplv/notes/gui/main/MainActivity;->onNoteSelected(Ljava/io/Serializable;)V

    .line 72
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    return-void
.end method
