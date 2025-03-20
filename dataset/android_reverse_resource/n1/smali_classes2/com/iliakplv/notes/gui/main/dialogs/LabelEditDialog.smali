.class public Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;
.super Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;
.source "LabelEditDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCallback;,
        Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final COLORS_CHECKBOXES_IDS:[I

.field private static final EXTRA_LABEL_NAME:Ljava/lang/String; = "label_name"

.field private static final EXTRA_NOTE_ID:Ljava/lang/String; = "note_id"

.field private static final EXTRA_SELECTED_COLOR:Ljava/lang/String; = "label_color"

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "label_edit_dialog"

.field public static final NEW_LABEL:Ljava/lang/Integer;


# instance fields
.field private nameEditText:Landroid/widget/EditText;

.field private selectedColor:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67456f0f520f96b6L    # -1.490636421180333E-189

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/LabelEditDialog"

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->NEW_LABEL:Ljava/lang/Integer;

    .line 34
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->COLORS_CHECKBOXES_IDS:[I

    const/16 v1, 0x3b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void

    :array_0
    .array-data 4
        0x7f0c0006
        0x7f0c0007
        0x7f0c0008
        0x7f0c0009
        0x7f0c000a
        0x7f0c000b
        0x7f0c000c
        0x7f0c000d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->selectedColor:I

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$002(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;I)I
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iput p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->selectedColor:I

    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method private static createDialog(Landroid/app/Fragment;Ljava/io/Serializable;Ljava/io/Serializable;)Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    instance-of v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCallback;

    if-nez v1, :cond_0

    const/16 v1, 0x30

    aput-boolean v4, v0, v1

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target fragment must implement callback interface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x31

    aput-boolean v4, v0, v2

    throw v1

    .line 133
    :cond_0
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;-><init>()V

    const/16 v2, 0x32

    aput-boolean v4, v0, v2

    .line 134
    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->createArgumentsBundle(Ljava/io/Serializable;)Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x33

    aput-boolean v4, v0, v3

    .line 135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x34

    aput-boolean v4, v0, v3

    .line 138
    :goto_0
    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0x37

    aput-boolean v4, v0, v2

    .line 139
    invoke-virtual {v1, p0, v5}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 140
    const/16 v2, 0x38

    aput-boolean v4, v0, v2

    return-object v1

    .line 135
    :cond_1
    const/16 v3, 0x35

    aput-boolean v4, v0, v3

    .line 136
    const-string v3, "note_id"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v3, 0x36

    aput-boolean v4, v0, v3

    goto :goto_0
.end method

.method private static getRandomColorIndex()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->COLORS_CHECKBOXES_IDS:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/io/Serializable;Landroid/app/Fragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->createDialog(Landroid/app/Fragment;Ljava/io/Serializable;Ljava/io/Serializable;)Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    move-result-object v1

    const-string v2, "label_edit_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 122
    const/16 v1, 0x2e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static showCreateAndSet(Landroid/app/FragmentManager;Landroid/app/Fragment;Ljava/io/Serializable;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->NEW_LABEL:Ljava/lang/Integer;

    invoke-static {p1, v1, p2}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->createDialog(Landroid/app/Fragment;Ljava/io/Serializable;Ljava/io/Serializable;)Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;

    move-result-object v1

    const-string v2, "label_edit_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 127
    const/16 v1, 0x2f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v10

    .line 47
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    .line 48
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 50
    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->NEW_LABEL:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->id:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 51
    .local v4, "editMode":Z
    :goto_0
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    const/4 v0, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 53
    .local v8, "fromSavedInstanceState":Z
    :goto_1
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->id:Ljava/io/Serializable;

    const/4 v6, 0x7

    const/4 v11, 0x1

    aput-boolean v11, v10, v6

    .line 54
    invoke-interface {v0, v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v3

    const/16 v0, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 57
    .local v3, "label":Lcom/iliakplv/notes/notes/Label;
    :goto_2
    if-eqz v8, :cond_3

    const-string v0, "label_name"

    const/16 v1, 0xb

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    move-object v1, v0

    .line 59
    :goto_3
    const/16 v0, 0xf

    const/4 v6, 0x1

    aput-boolean v6, v10, v0

    .line 60
    const v0, 0x7f0c0005

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->nameEditText:Landroid/widget/EditText;

    const/16 v0, 0x10

    const/4 v6, 0x1

    aput-boolean v6, v10, v0

    .line 61
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    if-eqz v8, :cond_4

    const-string v0, "label_color"

    const/16 v1, 0x11

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x12

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 64
    :goto_4
    iput v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->selectedColor:I

    .line 66
    new-instance v7, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->COLORS_CHECKBOXES_IDS:[I

    iget v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->selectedColor:I

    aget v0, v0, v1

    const/16 v1, 0x15

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 67
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {v7, p0, v0}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;Landroid/widget/CheckBox;)V

    .line 68
    .local v7, "checkBoxListener":Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;
    const/4 v9, 0x0

    const/16 v0, 0x16

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    :goto_5
    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->COLORS_CHECKBOXES_IDS:[I

    array-length v0, v0

    if-ge v9, v0, :cond_5

    const/16 v0, 0x17

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 69
    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->COLORS_CHECKBOXES_IDS:[I

    aget v0, v0, v9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 70
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x19

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 71
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    add-int/lit8 v9, v9, 0x1

    .local v9, "i":I
    const/16 v0, 0x1a

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    goto :goto_5

    .line 50
    .end local v3    # "label":Lcom/iliakplv/notes/notes/Label;
    .end local v4    # "editMode":Z
    .end local v7    # "checkBoxListener":Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;
    .end local v8    # "fromSavedInstanceState":Z
    .end local v9    # "i":I
    :cond_0
    const/4 v4, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    goto/16 :goto_0

    .line 51
    .restart local v4    # "editMode":Z
    :cond_1
    const/4 v8, 0x0

    const/4 v0, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    goto/16 :goto_1

    .line 54
    .restart local v8    # "fromSavedInstanceState":Z
    :cond_2
    new-instance v3, Lcom/iliakplv/notes/notes/Label;

    const-string v0, ""

    const/16 v1, 0x9

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 55
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->getRandomColorIndex()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/iliakplv/notes/notes/Label;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0xa

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    goto/16 :goto_2

    .line 58
    .restart local v3    # "label":Lcom/iliakplv/notes/notes/Label;
    :cond_3
    const/16 v0, 0xd

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 59
    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/Label;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    move-object v1, v0

    goto/16 :goto_3

    .line 63
    :cond_4
    const/16 v0, 0x13

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 64
    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v0

    const/16 v1, 0x14

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    goto/16 :goto_4

    .line 74
    .restart local v7    # "checkBoxListener":Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$LabelEditDialogCheckBoxListener;
    :cond_5
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_6

    const/16 v0, 0x1b

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 75
    :goto_6
    const/4 v5, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 76
    .local v5, "insertLabelToNote":Z
    :goto_7
    if-eqz v5, :cond_8

    const/16 v0, 0x20

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 77
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "note_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    const/16 v0, 0x21

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 78
    :goto_8
    const/16 v0, 0x24

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x25

    const/4 v11, 0x1

    aput-boolean v11, v10, v1

    .line 81
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f050028

    new-instance v0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;Landroid/view/View;Lcom/iliakplv/notes/notes/Label;ZZLjava/io/Serializable;)V

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    .line 82
    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050024

    const/4 v2, 0x0

    const/16 v6, 0x27

    const/4 v11, 0x1

    aput-boolean v11, v10, v6

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 80
    const/16 v1, 0x29

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    return-object v0

    .line 74
    .end local v5    # "insertLabelToNote":Z
    :cond_6
    const/16 v0, 0x1c

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 75
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "note_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x1d

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    goto :goto_6

    :cond_7
    const/4 v5, 0x1

    const/16 v0, 0x1e

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    goto :goto_7

    .line 77
    .restart local v5    # "insertLabelToNote":Z
    :cond_8
    const/4 v0, 0x0

    const/16 v1, 0x22

    const/4 v6, 0x1

    aput-boolean v6, v10, v1

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x23

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    goto :goto_8
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    invoke-super {p0, p1}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0x2b

    aput-boolean v3, v0, v1

    .line 115
    const-string v1, "label_name"

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->nameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    .line 116
    const-string v1, "label_color"

    iget v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/LabelEditDialog;->selectedColor:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    return-void
.end method
