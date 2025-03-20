.class Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;
.super Ljava/lang/Object;
.source "ActionListDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x32ab2f6d862dea2dL    # 1.2906976253673723E-64

    const-string v2, "chan/android/app/pocketnote/app/notes/ActionListDialogFragment$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->access$000(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;

    move-result-object v1

    if-nez v1, :cond_0

    aput-boolean v2, v0, v2

    .line 57
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->dismiss()V

    .line 58
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 54
    :cond_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 55
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->access$000(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;

    move-result-object v1

    invoke-interface {v1, p3}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;->onPick(I)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
