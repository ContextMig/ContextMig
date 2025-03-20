.class public Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;
.super Landroid/app/DialogFragment;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field protected static final KEY_COLORS:Ljava/lang/String; = "colors"

.field protected static final KEY_COLOR_CONTENT_DESCRIPTIONS:Ljava/lang/String; = "color_content_descriptions"

.field protected static final KEY_COLUMNS:Ljava/lang/String; = "columns"

.field protected static final KEY_SELECTED_COLOR:Ljava/lang/String; = "selected_color"

.field protected static final KEY_SIZE:Ljava/lang/String; = "size"

.field protected static final KEY_TITLE_ID:Ljava/lang/String; = "title_id"

.field public static final SIZE_LARGE:I = 0x1

.field public static final SIZE_SMALL:I = 0x2


# instance fields
.field protected isShowing:Z

.field protected mAlertDialog:Landroid/app/AlertDialog;

.field protected mColorContentDescriptions:[Ljava/lang/String;

.field protected mColors:[I

.field protected mColumns:I

.field protected mListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

.field private mProgress:Landroid/widget/ProgressBar;

.field protected mSelectedColor:I

.field protected mSize:I

.field protected mTitleResId:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x50bb73175313be4fL    # -5.416166295396073E-81

    const-string v2, "com/moonpi/swiftnotes/ColorPicker/ColorPickerDialog"

    const/16 v3, 0x5c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 38
    const v1, 0x7f05001a

    iput v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mTitleResId:I

    .line 39
    iput-object v3, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    .line 40
    iput-object v3, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColorContentDescriptions:[Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->isShowing:Z

    .line 54
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public static newInstance(I[IIII)Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v6

    .line 59
    new-instance v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    invoke-direct {v0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;-><init>()V

    aput-boolean v7, v6, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->initialize(I[IIII)V

    .line 61
    const/4 v1, 0x2

    aput-boolean v7, v6, v1

    return-object v0
.end method

.method private refreshPalette()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    if-nez v1, :cond_0

    const/16 v1, 0x50

    aput-boolean v5, v0, v1

    .line 199
    :goto_0
    const/16 v1, 0x54

    aput-boolean v5, v0, v1

    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    if-nez v1, :cond_1

    const/16 v1, 0x51

    aput-boolean v5, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x52

    aput-boolean v5, v0, v1

    .line 197
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    iget v3, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    iget-object v4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColorContentDescriptions:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->drawPalette([II[Ljava/lang/String;)V

    const/16 v1, 0x53

    aput-boolean v5, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getColors()[I
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    const/16 v2, 0x55

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSelectedColor()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 206
    iget v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    const/16 v2, 0x56

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public initialize(I[IIII)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    invoke-virtual {p0, p1, p4, p5}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->setArguments(III)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 66
    invoke-virtual {p0, p2, p3}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->setColors([II)V

    .line 67
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public isDialogShowing()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 227
    iget-boolean v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->isShowing:Z

    const/16 v2, 0x5b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onColorSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    if-nez v0, :cond_0

    const/16 v0, 0x26

    aput-boolean v4, v1, v0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    if-nez v0, :cond_1

    const/16 v0, 0x29

    aput-boolean v4, v1, v0

    .line 142
    :goto_1
    iget v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    if-ne p1, v0, :cond_2

    const/16 v0, 0x2d

    aput-boolean v4, v1, v0

    .line 148
    :goto_2
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->dismiss()V

    .line 149
    const/16 v0, 0x30

    aput-boolean v4, v1, v0

    return-void

    .line 133
    :cond_0
    const/16 v0, 0x27

    aput-boolean v4, v1, v0

    .line 134
    iget-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-interface {v0, p1}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    const/16 v0, 0x28

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 137
    :cond_1
    const/16 v0, 0x2a

    aput-boolean v4, v1, v0

    .line 138
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    const/16 v2, 0x2b

    aput-boolean v4, v1, v2

    .line 139
    invoke-interface {v0, p1}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    const/16 v0, 0x2c

    aput-boolean v4, v1, v0

    goto :goto_1

    .line 143
    :cond_2
    iput p1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    const/16 v0, 0x2e

    aput-boolean v4, v1, v0

    .line 145
    iget-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    iget v3, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    invoke-virtual {v0, v2, v3}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->drawPalette([II)V

    const/16 v0, 0x2f

    aput-boolean v4, v1, v0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0xe

    aput-boolean v3, v1, v0

    .line 91
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0xf

    aput-boolean v3, v1, v0

    .line 97
    :goto_0
    if-nez p1, :cond_1

    const/16 v0, 0x14

    aput-boolean v3, v1, v0

    .line 103
    :goto_1
    const/16 v0, 0x19

    aput-boolean v3, v1, v0

    return-void

    .line 91
    :cond_0
    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    .line 92
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mTitleResId:I

    const/16 v0, 0x11

    aput-boolean v3, v1, v0

    .line 93
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "columns"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColumns:I

    const/16 v0, 0x12

    aput-boolean v3, v1, v0

    .line 94
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "size"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSize:I

    const/16 v0, 0x13

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 97
    :cond_1
    const/16 v0, 0x15

    aput-boolean v3, v1, v0

    .line 98
    const-string v0, "colors"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    const/16 v0, 0x16

    aput-boolean v3, v1, v0

    .line 99
    const-string v0, "selected_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    const/16 v0, 0x17

    aput-boolean v3, v1, v0

    .line 100
    const-string v0, "color_content_descriptions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColorContentDescriptions:[Ljava/lang/String;

    const/16 v0, 0x18

    aput-boolean v3, v1, v0

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v0, 0x1a

    aput-boolean v6, v1, v0

    .line 110
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/16 v0, 0x1b

    aput-boolean v6, v1, v0

    .line 111
    const v0, 0x102000d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const/16 v0, 0x1c

    aput-boolean v6, v1, v0

    .line 112
    const v0, 0x7f0b005e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    iput-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    const/16 v0, 0x1d

    aput-boolean v6, v1, v0

    .line 113
    iget-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    iget v4, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSize:I

    iget v5, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColumns:I

    invoke-virtual {v0, v4, v5, p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->init(IILcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 115
    iget-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    aput-boolean v6, v1, v0

    .line 118
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mTitleResId:I

    const/16 v4, 0x21

    aput-boolean v6, v1, v4

    .line 119
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x22

    aput-boolean v6, v1, v2

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x23

    aput-boolean v6, v1, v2

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 123
    iget-object v0, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/16 v2, 0x24

    aput-boolean v6, v1, v2

    return-object v0

    .line 115
    :cond_0
    const/16 v0, 0x1f

    aput-boolean v6, v1, v0

    .line 116
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->showPaletteView()V

    const/16 v0, 0x20

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 221
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->isShowing:Z

    const/16 v1, 0x59

    aput-boolean v2, v0, v1

    .line 222
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 223
    const/16 v1, 0x5a

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 81
    const-string v1, "colors"

    iget-object v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 82
    const-string v1, "selected_color"

    iget v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 83
    const-string v1, "color_content_descriptions"

    iget-object v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColorContentDescriptions:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setArguments(III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 71
    const-string v2, "title_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    .line 72
    const-string v2, "columns"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x7

    aput-boolean v3, v0, v2

    .line 73
    const-string v2, "size"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    .line 74
    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 75
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void
.end method

.method public setColorContentDescriptions([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColorContentDescriptions:[Ljava/lang/String;

    if-ne v1, p1, :cond_0

    const/16 v1, 0x4c

    aput-boolean v2, v0, v1

    .line 193
    :goto_0
    const/16 v1, 0x4f

    aput-boolean v2, v0, v1

    return-void

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColorContentDescriptions:[Ljava/lang/String;

    const/16 v1, 0x4d

    aput-boolean v2, v0, v1

    .line 191
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->refreshPalette()V

    const/16 v1, 0x4e

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public setColors([I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    if-ne v1, p1, :cond_0

    const/16 v1, 0x44

    aput-boolean v2, v0, v1

    .line 179
    :goto_0
    const/16 v1, 0x47

    aput-boolean v2, v0, v1

    return-void

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    const/16 v1, 0x45

    aput-boolean v2, v0, v1

    .line 177
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->refreshPalette()V

    const/16 v1, 0x46

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public setColors([II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    if-eq v1, p1, :cond_0

    const/16 v1, 0x3e

    aput-boolean v2, v0, v1

    .line 168
    :goto_0
    iput-object p1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mColors:[I

    .line 169
    iput p2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    const/16 v1, 0x41

    aput-boolean v2, v0, v1

    .line 170
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->refreshPalette()V

    const/16 v1, 0x42

    aput-boolean v2, v0, v1

    .line 172
    :goto_1
    const/16 v1, 0x43

    aput-boolean v2, v0, v1

    return-void

    .line 167
    :cond_0
    iget v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    if-ne v1, p2, :cond_1

    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public setOnColorSelectedListener(Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 128
    iput-object p1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mListener:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 129
    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    iget v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    if-ne v1, p1, :cond_0

    const/16 v1, 0x48

    aput-boolean v2, v0, v1

    .line 186
    :goto_0
    const/16 v1, 0x4b

    aput-boolean v2, v0, v1

    return-void

    .line 183
    :cond_0
    iput p1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mSelectedColor:I

    const/16 v1, 0x49

    aput-boolean v2, v0, v1

    .line 184
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->refreshPalette()V

    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    iget-boolean v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->isShowing:Z

    if-eqz v1, :cond_0

    .line 213
    const/16 v1, 0x57

    aput-boolean v2, v0, v1

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 216
    iput-boolean v2, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->isShowing:Z

    .line 217
    const/16 v1, 0x58

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public showPaletteView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    .line 157
    :goto_0
    const/16 v1, 0x37

    aput-boolean v3, v0, v1

    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    if-nez v1, :cond_1

    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x33

    aput-boolean v3, v0, v1

    .line 153
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 154
    invoke-direct {p0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->refreshPalette()V

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    .line 155
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->setVisibility(I)V

    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public showProgressBarView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    .line 164
    :goto_0
    const/16 v1, 0x3d

    aput-boolean v3, v0, v1

    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    if-nez v1, :cond_1

    const/16 v1, 0x39

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3a

    aput-boolean v3, v0, v1

    .line 161
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v1, 0x3b

    aput-boolean v3, v0, v1

    .line 162
    iget-object v1, p0, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->mPalette:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerPalette;->setVisibility(I)V

    const/16 v1, 0x3c

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
