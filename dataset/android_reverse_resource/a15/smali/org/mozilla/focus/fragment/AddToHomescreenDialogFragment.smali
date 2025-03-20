.class public Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AddToHomescreenDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "blockingEnabled"    # Z
    .param p3, "requestDesktop"    # Z

    .prologue
    .line 39
    new-instance v1, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;-><init>()V

    .line 40
    .local v1, "frag":Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "blocking_enabled"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string v2, "request_desktop"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {v1, v0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 114
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 116
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 117
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 120
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/support/v7/app/AlertDialog;
    .locals 17
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "url":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "blocking_enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 55
    .local v5, "blockingEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request_desktop"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 57
    .local v6, "requestDesktop":Z
    new-instance v10, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1000ac

    invoke-direct {v10, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 58
    .local v10, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f008e

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 61
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    .line 62
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0b001d

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 63
    .local v11, "dialogView":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 67
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Lorg/mozilla/focus/shortcut/IconGenerator;->getRepresentativeCharacter(Ljava/lang/String;)C

    move-result v2

    invoke-static {v1, v2}, Lorg/mozilla/focus/shortcut/IconGenerator;->generateLauncherIconPreOreo(Landroid/content/Context;C)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 68
    .local v12, "iconBitmap":Landroid/graphics/Bitmap;
    const v1, 0x7f090087

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 69
    .local v13, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    const v1, 0x7f090084

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 72
    .local v9, "blockIcon":Landroid/widget/ImageView;
    const v1, 0x7f08009a

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    const v1, 0x7f09001d

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 75
    .local v7, "addToHomescreenDialogCancelButton":Landroid/widget/Button;
    const v1, 0x7f09001c

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 76
    .local v8, "addToHomescreenDialogConfirmButton":Landroid/widget/Button;
    const v1, 0x7f0f0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v1, 0x7f0f0053

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v1, 0x7f090086

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 80
    .local v16, "warning":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_1

    const/16 v1, 0x8

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    const v1, 0x7f09006c

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 84
    .local v4, "editableTitle":Landroid/widget/EditText;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 89
    :cond_0
    new-instance v1, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$1;-><init>(Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v1, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment$2;-><init>(Lorg/mozilla/focus/fragment/AddToHomescreenDialogFragment;Ljava/lang/String;Landroid/widget/EditText;ZZ)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v10}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 80
    .end local v4    # "editableTitle":Landroid/widget/EditText;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
