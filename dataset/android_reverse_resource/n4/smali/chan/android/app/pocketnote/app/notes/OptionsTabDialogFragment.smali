.class public Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "OptionsTabDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;,
        Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;,
        Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final SORT_OPTIONS:[Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

.field public static final TAG:Ljava/lang/String;

.field private static final VIEW_OPTIONS:[Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;


# instance fields
.field private pickListener:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xf67052a64a2a409L

    const-string v2, "chan/android/app/pocketnote/app/notes/OptionsTabDialogFragment"

    const/16 v3, 0x18

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 19
    const-class v1, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->TAG:Ljava/lang/String;

    const/16 v1, 0x15

    aput-boolean v5, v0, v1

    .line 20
    new-array v1, v7, [Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const v3, 0x7f02008c

    const-string v4, "As list view"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const v3, 0x7f02008b

    const-string v4, "As grid view"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    sput-object v1, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->VIEW_OPTIONS:[Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const/16 v1, 0x16

    aput-boolean v5, v0, v1

    .line 24
    const/4 v1, 0x3

    new-array v1, v1, [Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const v3, 0x7f020089

    const-string v4, "By modified time"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const v3, 0x7f020086

    const-string v4, "By alphabet"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const v3, 0x7f02008d

    const-string v4, "By color"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v7

    sput-object v1, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->SORT_OPTIONS:[Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    const/16 v1, 0x17

    aput-boolean v5, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;)Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->pickListener:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private populateListView(Landroid/view/View;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 66
    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;

    invoke-direct {v2, p0, p3}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    .line 75
    new-instance v2, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/16 v3, 0x12

    aput-boolean v4, v1, v3

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    const/16 v0, 0x13

    aput-boolean v4, v1, v0

    return-void
.end method


# virtual methods
.method public addPickOptionListener(Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->pickListener:Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$PickOptionListener;

    .line 37
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f0c0088

    const v7, 0x7f0c0087

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 45
    const v1, 0x7f030029

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x2

    aput-boolean v6, v2, v1

    .line 46
    const v1, 0x7f0c0084

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    const/4 v4, 0x3

    aput-boolean v6, v2, v4

    .line 47
    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    const/4 v4, 0x4

    aput-boolean v6, v2, v4

    .line 48
    const-string v4, "tag1"

    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const/4 v5, 0x5

    aput-boolean v6, v2, v5

    .line 49
    invoke-virtual {v4, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    const/4 v5, 0x6

    aput-boolean v6, v2, v5

    .line 50
    sget-object v5, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->SORT_OPTIONS:[Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v7, v5}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->populateListView(Landroid/view/View;ILjava/util/List;)V

    const/4 v5, 0x7

    aput-boolean v6, v2, v5

    .line 51
    const-string v5, "Sort by"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    const/16 v5, 0x8

    aput-boolean v6, v2, v5

    .line 52
    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/16 v4, 0x9

    aput-boolean v6, v2, v4

    .line 54
    const-string v4, "tag2"

    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .local v0, "spec":Landroid/widget/TabHost$TabSpec;
    const/16 v4, 0xa

    aput-boolean v6, v2, v4

    .line 55
    invoke-virtual {v0, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    const/16 v4, 0xb

    aput-boolean v6, v2, v4

    .line 56
    sget-object v4, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->VIEW_OPTIONS:[Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$Option;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v8, v4}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->populateListView(Landroid/view/View;ILjava/util/List;)V

    const/16 v4, 0xc

    aput-boolean v6, v2, v4

    .line 57
    const-string v4, "View"

    invoke-virtual {v0, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    const/16 v4, 0xd

    aput-boolean v6, v2, v4

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const/16 v1, 0xe

    aput-boolean v6, v2, v1

    .line 60
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 61
    const/16 v1, 0xf

    aput-boolean v6, v2, v1

    return-object v3
.end method
