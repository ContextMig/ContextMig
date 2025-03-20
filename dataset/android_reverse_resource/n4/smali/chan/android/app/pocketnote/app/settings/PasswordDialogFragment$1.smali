.class Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;
.super Ljava/lang/Object;
.source "PasswordDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6fc6cb4c4d02b81aL

    const-string v2, "chan/android/app/pocketnote/app/settings/PasswordDialogFragment$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->access$000(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setError(Ljava/lang/CharSequence;)V

    aput-boolean v3, v0, v3

    .line 42
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->access$100(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 45
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 42
    :cond_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 43
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->access$100(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;->this$0:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->access$200(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;->onEnter(Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
