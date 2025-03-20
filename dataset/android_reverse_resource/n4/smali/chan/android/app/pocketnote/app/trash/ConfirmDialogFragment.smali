.class public Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ConfirmDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private leftButtonText:Ljava/lang/String;

.field private listener:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;

.field private message:Ljava/lang/String;

.field private rightButtonText:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6941369edc87ed9aL    # 1.02937316328125E199

    const-string v2, "chan/android/app/pocketnote/app/trash/ConfirmDialogFragment"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 23
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 26
    iput-object p1, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->message:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->leftButtonText:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->rightButtonText:Ljava/lang/String;

    .line 29
    aput-boolean v1, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;)Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->listener:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 41
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const/4 v1, 0x3

    aput-boolean v6, v3, v1

    .line 42
    const v1, 0x7f0c0060

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x4

    aput-boolean v6, v3, v2

    .line 43
    const v2, 0x7f0c005f

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v5, 0x5

    aput-boolean v6, v3, v5

    .line 44
    const v5, 0x7f0c005e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "msg":Landroid/widget/TextView;
    iget-object v5, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->leftButtonText:Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v5, 0x6

    aput-boolean v6, v3, v5

    .line 50
    :goto_0
    iget-object v5, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->rightButtonText:Ljava/lang/String;

    if-nez v5, :cond_1

    const/16 v5, 0x9

    aput-boolean v6, v3, v5

    .line 54
    :goto_1
    iget-object v5, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->message:Ljava/lang/String;

    if-nez v5, :cond_2

    const/16 v5, 0xc

    aput-boolean v6, v3, v5

    .line 58
    :goto_2
    new-instance v5, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;

    invoke-direct {v5, p0}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xf

    aput-boolean v6, v3, v1

    .line 68
    new-instance v1, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$2;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$2;-><init>(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x10

    aput-boolean v6, v3, v1

    .line 77
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 78
    const/16 v1, 0x11

    aput-boolean v6, v3, v1

    return-object v4

    .line 46
    :cond_0
    const/4 v5, 0x7

    aput-boolean v6, v3, v5

    .line 47
    iget-object v5, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->leftButtonText:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x8

    aput-boolean v6, v3, v5

    goto :goto_0

    .line 50
    :cond_1
    const/16 v5, 0xa

    aput-boolean v6, v3, v5

    .line 51
    iget-object v5, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->rightButtonText:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0xb

    aput-boolean v6, v3, v5

    goto :goto_1

    .line 54
    :cond_2
    const/16 v5, 0xd

    aput-boolean v6, v3, v5

    .line 55
    iget-object v5, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0xe

    aput-boolean v6, v3, v5

    goto :goto_2
.end method

.method public setOnConfirmListener(Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iput-object p1, p0, Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment;->listener:Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;

    .line 33
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
