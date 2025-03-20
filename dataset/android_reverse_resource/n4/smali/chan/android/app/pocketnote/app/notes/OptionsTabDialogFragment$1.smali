.class Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;
.super Ljava/lang/Object;
.source "OptionsTabDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->populateListView(Landroid/view/View;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;

.field final synthetic val$options:Ljava/util/List;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x43a96f80dae1e5c7L    # 9.1641262547211968E17

    const-string v2, "chan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;Ljava/util/List;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->val$options:Ljava/util/List;

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

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->$jacocoInit()[Z

    move-result-object v1

    .line 69
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->access$000(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;)Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;

    move-result-object v0

    if-nez v0, :cond_0

    aput-boolean v3, v1, v3

    .line 72
    :goto_0
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->dismiss()V

    .line 73
    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 70
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->access$000(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;)Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;

    move-result-object v2

    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;->val$options:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    invoke-interface {v2, v0}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;->onPick(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    goto :goto_0
.end method
