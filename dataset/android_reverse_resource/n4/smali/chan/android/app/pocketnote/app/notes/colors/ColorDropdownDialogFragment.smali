.class public Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ColorDropdownDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;
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

    sget-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x52bf3211c35a1e6bL    # 3.971657873778416E90

    const-string v2, "chan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    const-class v1, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;)Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 15
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getButtonColor(Landroid/widget/Button;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 65
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 60
    :goto_0
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->dismiss()V

    .line 61
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void

    .line 56
    :cond_0
    check-cast p1, Landroid/widget/Button;

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 57
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    invoke-virtual {p0, p1}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->getButtonColor(Landroid/widget/Button;)I

    move-result v2

    invoke-interface {v1, v2}, Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;->onPick(I)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 58
    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v0, 0x2

    aput-boolean v7, v1, v0

    .line 37
    const v0, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x3

    aput-boolean v7, v1, v0

    .line 38
    const v0, 0x7f0c005b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v3, 0x4

    aput-boolean v7, v1, v3

    .line 39
    new-instance v3, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lchan/android/app/pocketnote/app/notes/colors/ColorItem;->DEFAULT_ITEMS:[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;-><init>(Landroid/content/Context;[Lchan/android/app/pocketnote/app/notes/colors/ColorItem;Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;)V

    const/4 v4, 0x5

    aput-boolean v7, v1, v4

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x6

    aput-boolean v7, v1, v4

    .line 41
    new-instance v4, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;

    invoke-direct {v4, p0, v3}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$1;-><init>(Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment$ColorItemAdapter;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    const/4 v0, 0x7

    aput-boolean v7, v1, v0

    return-object v2
.end method

.method public setOnPickColorListener(Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/colors/ColorDropdownDialogFragment;->listener:Lchan/android/app/pocketnote/app/notes/colors/OnPickColorListener;

    .line 28
    aput-boolean v1, v0, v1

    return-void
.end method
