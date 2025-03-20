.class Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;
.super Ljava/lang/Object;
.source "ColorDropdownDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;

.field final synthetic val$adapter:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x74f58809e786a24eL    # -1.762806496105633E-255

    const-string v2, "chan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;

    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->val$adapter:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;

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

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->access$100(Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;)Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    move-result-object v1

    if-nez v1, :cond_0

    aput-boolean v3, v0, v3

    .line 48
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 44
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 45
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->access$100(Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;)Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->val$adapter:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;

    invoke-virtual {v2, p3}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;->getItem(I)Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    move-result-object v2

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;->onPick(I)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 46
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->dismiss()V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
