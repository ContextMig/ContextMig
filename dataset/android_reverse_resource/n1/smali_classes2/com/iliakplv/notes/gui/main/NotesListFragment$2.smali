.class Lcom/iliakplv/notes/gui/main/NotesListFragment$2;
.super Ljava/lang/Object;
.source "NotesListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    sget-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5ee89dd47e8043bfL

    const-string v2, "com/iliakplv/notes/gui/main/NotesListFragment$2"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$000(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;

    move-result-object v1

    const-string v2, "note_list_note_actions"

    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 78
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;->this$0:Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-static {v1, p3}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->access$200(Lcom/iliakplv/notes/gui/main/NotesListFragment;I)Z

    move-result v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return v1
.end method
