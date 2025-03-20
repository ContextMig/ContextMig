.class Lchan/android/app/pocketnote/app/notes/NotesFragment$3;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/NotesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3411f2c5c79d882eL    # 7.148334986457822E-58

    const-string v2, "chan/android/app/pocketnote/app/notes/NotesFragment$3"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 167
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 170
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$3;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 171
    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;

    invoke-direct {v2}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;-><init>()V

    const/4 v3, 0x2

    aput-boolean v4, v0, v3

    .line 172
    sget-object v3, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 173
    new-instance v1, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/notes/NotesFragment$3$1;-><init>(Lchan/android/app/pocketnote/app/notes/NotesFragment$3;)V

    invoke-virtual {v2, v1}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->addPickOptionListener(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;)V

    .line 191
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void
.end method
