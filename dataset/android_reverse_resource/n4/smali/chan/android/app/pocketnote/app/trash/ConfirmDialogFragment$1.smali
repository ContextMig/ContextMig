.class Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3d137d67cc040baL

    const-string v2, "chan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->access$000(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;)Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;

    move-result-object v1

    if-nez v1, :cond_0

    aput-boolean v2, v0, v2

    .line 64
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->dismiss()V

    .line 65
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 61
    :cond_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 62
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->access$000(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;)Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;->onEnter(Z)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
