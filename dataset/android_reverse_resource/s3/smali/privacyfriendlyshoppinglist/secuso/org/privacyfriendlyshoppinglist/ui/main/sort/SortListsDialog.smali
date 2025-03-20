.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;
.super Landroid/app/DialogFragment;
.source "SortListsDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private activity:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2b5e6392c1a3d601L    # -4.814970526817566E99

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog"

    const/16 v3, 0x1c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;)Landroid/support/v7/app/AppCompatActivity;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->activity:Landroid/support/v7/app/AppCompatActivity;

    const/16 v2, 0x1b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static newInstance(Landroid/support/v7/app/AppCompatActivity;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    new-instance v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;

    invoke-direct {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;-><init>()V

    aput-boolean v3, v0, v3

    .line 39
    invoke-virtual {v1, p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->setActivity(Landroid/support/v7/app/AppCompatActivity;)V

    .line 40
    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private setupPreviosOptions(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoInit()[Z

    move-result-object v3

    .line 110
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "sort_asc_dec_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v4, 0xf

    aput-boolean v1, v3, v4

    .line 111
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->getAscending()Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/16 v4, 0x10

    aput-boolean v1, v3, v4

    .line 112
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->getDescending()Landroid/widget/RadioButton;

    move-result-object v4

    if-nez v0, :cond_0

    const/16 v0, 0x11

    aput-boolean v1, v3, v0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/16 v0, 0x13

    aput-boolean v1, v3, v0

    .line 114
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "sort_by_key"

    const-string v5, "sort.by.name"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x14

    aput-boolean v1, v3, v0

    .line 115
    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/16 v2, 0x15

    aput-boolean v1, v3, v2

    move v2, v0

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 121
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->getName()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/16 v0, 0x19

    aput-boolean v1, v3, v0

    .line 123
    :goto_2
    const/16 v0, 0x1a

    aput-boolean v1, v3, v0

    return-void

    .line 112
    :cond_0
    const/16 v0, 0x12

    aput-boolean v1, v3, v0

    move v0, v2

    goto :goto_0

    .line 115
    :pswitch_0
    const-string v5, "sort.by.priority"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v2, 0x16

    aput-boolean v1, v3, v2

    move v2, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x17

    aput-boolean v1, v3, v0

    goto :goto_1

    .line 118
    :pswitch_1
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;->getPriority()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    const/16 v0, 0x18

    aput-boolean v1, v3, v0

    goto :goto_2

    .line 115
    :pswitch_data_0
    .packed-switch 0x29cf810b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v5, v0, v2

    .line 59
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0087

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x6

    aput-boolean v5, v0, v3

    .line 60
    const v3, 0x7f040057

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x7

    aput-boolean v5, v0, v3

    .line 62
    new-instance v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;

    invoke-direct {v3, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;-><init>(Landroid/view/View;)V

    const/16 v4, 0x8

    aput-boolean v5, v0, v4

    .line 63
    invoke-direct {p0, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->setupPreviosOptions(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;)V

    const/16 v4, 0x9

    aput-boolean v5, v0, v4

    .line 65
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 66
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0900bf

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    .line 67
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f090024

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    .line 68
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f09007d

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;

    invoke-direct {v4, p0, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog$1;-><init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialogCache;)V

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    .line 105
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method public setActivity(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/sort/SortListsDialog;->activity:Landroid/support/v7/app/AppCompatActivity;

    .line 46
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
