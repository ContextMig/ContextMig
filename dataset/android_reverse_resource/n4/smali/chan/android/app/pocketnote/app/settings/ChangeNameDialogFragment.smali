.class public Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ChangeNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private listener:Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;

.field private name:Ljava/lang/String;

.field private reset:Landroid/widget/Button;

.field private save:Landroid/widget/Button;

.field private username:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x505f478815da4c5L

    const-string v2, "chan/android/app/pocketnote/app/settings/ChangeNameDialogFragment"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 19
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->name:Ljava/lang/String;

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->reset:Landroid/widget/Button;

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->listener:Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->save:Landroid/widget/Button;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->username:Landroid/widget/EditText;

    const/16 v2, 0xf

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

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 28
    const v0, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 29
    const v0, 0x7f0c00bc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->username:Landroid/widget/EditText;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 30
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->username:Landroid/widget/EditText;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    aput-boolean v4, v1, v5

    .line 31
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 32
    const v0, 0x7f0c00bd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->reset:Landroid/widget/Button;

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 33
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->reset:Landroid/widget/Button;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$1;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 42
    const v0, 0x7f0c00be

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->save:Landroid/widget/Button;

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 43
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->save:Landroid/widget/Button;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$2;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$2;-><init>(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 52
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 53
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 54
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    return-object v2
.end method

.method public setOnChangeNameListener(Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iput-object p1, p0, Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment;->listener:Lchan/android/app/pocketnote/app/settings/ChangeNameDialogFragment$OnChangeNameListener;

    .line 24
    aput-boolean v1, v0, v1

    return-void
.end method
