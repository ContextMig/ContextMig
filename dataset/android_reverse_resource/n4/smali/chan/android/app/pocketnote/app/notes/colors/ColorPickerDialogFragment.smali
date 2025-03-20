.class public Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ColorPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x46f5f8b7df6477ceL    # 7.13017746883079E33

    const-string v2, "chan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    const-class v1, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->TAG:Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 23
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;)Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 35
    const v0, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    .line 36
    const v0, 0x7f0c0058

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    const/4 v3, 0x3

    aput-boolean v7, v1, v3

    .line 37
    new-instance v3, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->DEFAULT_ITEMS:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;-><init>(Landroid/content/Context;[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$1;)V

    const/4 v4, 0x4

    aput-boolean v7, v1, v4

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x5

    aput-boolean v7, v1, v4

    .line 39
    new-instance v4, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$1;

    invoke-direct {v4, p0, v3}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment$ColorItemAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x6

    aput-boolean v7, v1, v0

    .line 48
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 49
    const/4 v0, 0x7

    aput-boolean v7, v1, v0

    return-object v2
.end method

.method public setOnPickColorListener(Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorPickerDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    .line 27
    aput-boolean v1, v0, v1

    return-void
.end method
