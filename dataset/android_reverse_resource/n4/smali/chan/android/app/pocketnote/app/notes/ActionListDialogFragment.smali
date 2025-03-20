.class public Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ActionListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;,
        Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;,
        Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private adapter:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;

.field private title:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x61eff2e5f384a170L

    const-string v2, "chan/android/app/pocketnote/app/notes/ActionListDialogFragment"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 27
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->title:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->items:Ljava/util/List;

    .line 29
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/List;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;)",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    new-instance v1, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    invoke-direct {v1, p0, p1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;-><init>(Ljava/lang/String;Ljava/util/List;)V

    aput-boolean v2, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 45
    const v0, 0x7f03002f

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x3

    aput-boolean v6, v2, v0

    .line 46
    const v0, 0x7f0c0094

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    .line 47
    const v1, 0x7f0c0093

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, 0x5

    aput-boolean v6, v2, v4

    .line 48
    iget-object v4, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    .line 49
    new-instance v1, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->items:Ljava/util/List;

    invoke-direct {v1, v4, v5}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$ItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v4, 0x7

    aput-boolean v6, v2, v4

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0x8

    aput-boolean v6, v2, v1

    .line 51
    new-instance v1, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x9

    aput-boolean v6, v2, v0

    .line 60
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 61
    const/16 v0, 0xa

    aput-boolean v6, v2, v0

    return-object v3
.end method

.method public setPickItemListener(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;

    .line 37
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
