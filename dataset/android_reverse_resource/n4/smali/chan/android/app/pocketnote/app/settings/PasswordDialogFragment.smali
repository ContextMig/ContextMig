.class public Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PasswordDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private enter:Landroid/widget/Button;

.field private listener:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;

.field private password:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3d1de4a467a7bad6L    # 2.6550436178262964E-14

    const-string v2, "chan/android/app/pocketnote/app/settings/PasswordDialogFragment"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 18
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->enter:Landroid/widget/Button;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->listener:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->password:Landroid/widget/EditText;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 34
    const v0, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 35
    const v0, 0x7f0c008c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->password:Landroid/widget/EditText;

    aput-boolean v4, v1, v5

    .line 36
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 37
    const v0, 0x7f0c008d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->enter:Landroid/widget/Button;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 38
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->enter:Landroid/widget/Button;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 47
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 48
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 49
    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    return-object v2
.end method

.method public setOnPasswordEnterListener(Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->listener:Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment$OnPasswordEnterListener;

    .line 22
    aput-boolean v1, v0, v1

    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/PasswordDialogFragment;->password:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 30
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
