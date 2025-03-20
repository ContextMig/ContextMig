.class public Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;
.super Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;
.source "SimpleItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;,
        Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;,
        Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final EXTRA_TYPE:Ljava/lang/String; = "dialog_type"

.field private static final FRAGMENT_TAG_PREFIX:Ljava/lang/String; = "item_dialog_"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x480af451800bf4b7L    # 1.146512043007142E39

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/SimpleItemDialog"

    const/16 v3, 0x42

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->showSimpleDialogForCurrentItem(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;)V

    const/16 v1, 0x41

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createLabelActionsDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    invoke-interface {v1, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v1

    const/16 v2, 0x2e

    aput-boolean v5, v0, v2

    .line 129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x2f

    aput-boolean v5, v0, v3

    .line 130
    invoke-static {v1}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f060000

    new-instance v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$LabelActionDialogClickListener;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;)V

    const/16 v4, 0x30

    aput-boolean v5, v0, v4

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050024

    const/4 v3, 0x0

    const/16 v4, 0x31

    aput-boolean v5, v0, v4

    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x32

    aput-boolean v5, v0, v2

    .line 133
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 129
    const/16 v2, 0x33

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method private createLabelDeleteDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    invoke-interface {v1, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v1

    const/16 v2, 0x34

    aput-boolean v6, v0, v2

    .line 138
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x35

    aput-boolean v6, v0, v3

    .line 139
    invoke-static {v1}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050030

    const/16 v4, 0x36

    aput-boolean v6, v0, v4

    .line 140
    invoke-virtual {p0, v3}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iliakplv/notes/utils/StringUtils;->wrapWithEmptyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050026

    const/4 v4, 0x0

    const/16 v5, 0x37

    aput-boolean v6, v0, v5

    .line 141
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050029

    new-instance v4, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;

    invoke-direct {v4, p0, v1}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;Lcom/iliakplv/notes/notes/Label;)V

    const/16 v1, 0x38

    aput-boolean v6, v0, v1

    .line 142
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x39

    aput-boolean v6, v0, v2

    .line 153
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 138
    const/16 v2, 0x3a

    aput-boolean v6, v0, v2

    return-object v1
.end method

.method private createNoteActionsDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    invoke-interface {v1, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v5, v0, v2

    .line 59
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    aput-boolean v5, v0, v3

    .line 60
    invoke-static {v1}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForNoteInDialog(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060003

    new-instance v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;)V

    const/16 v4, 0xb

    aput-boolean v5, v0, v4

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050024

    const/4 v3, 0x0

    const/16 v4, 0xc

    aput-boolean v5, v0, v4

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v5, v0, v2

    .line 63
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 59
    const/16 v2, 0xe

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method private createNoteDeleteDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 93
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v2, "note_options_delete_confirm"

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v0, 0x21

    aput-boolean v5, v1, v0

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    const/16 v4, 0x22

    aput-boolean v5, v1, v4

    .line 95
    invoke-interface {v2, v3}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForNoteInDialog(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f050040

    const/16 v3, 0x23

    aput-boolean v5, v1, v3

    .line 96
    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/utils/StringUtils;->wrapWithEmptyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f050026

    const/4 v3, 0x0

    const/16 v4, 0x24

    aput-boolean v5, v1, v4

    .line 97
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f050029

    new-instance v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;)V

    const/16 v4, 0x25

    aput-boolean v5, v1, v4

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0x26

    aput-boolean v5, v1, v2

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 94
    const/16 v2, 0x27

    aput-boolean v5, v1, v2

    return-object v0
.end method

.method private createNoteInfoDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v2

    .line 67
    const-string v1, "HH:mm"

    const/16 v1, 0xf

    aput-boolean v8, v2, v1

    .line 69
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    invoke-interface {v1, v3}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v3

    const/16 v1, 0x10

    aput-boolean v8, v2, v1

    .line 70
    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/AbstractNote;->getCreateTime()Lorg/joda/time/DateTime;

    move-result-object v1

    const/16 v4, 0x11

    aput-boolean v8, v2, v4

    .line 71
    invoke-virtual {v3}, Lcom/iliakplv/notes/notes/AbstractNote;->getChangeTime()Lorg/joda/time/DateTime;

    move-result-object v4

    const/16 v5, 0x12

    aput-boolean v8, v2, v5

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x13

    aput-boolean v8, v2, v6

    .line 74
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object v6

    const-string v7, "HH:mm"

    invoke-virtual {v6, v7}, Lorg/joda/time/LocalTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    aput-boolean v8, v2, v6

    .line 75
    const v6, 0x7f050048

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iliakplv/notes/utils/StringUtils;->wrapWithEmptyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x15

    aput-boolean v8, v2, v5

    .line 77
    invoke-virtual {v1, v4}, Lorg/joda/time/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    aput-boolean v8, v2, v1

    .line 83
    .local v0, "info":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v4, "note_options_info"

    invoke-virtual {v1, v4}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v1, 0x1b

    aput-boolean v8, v2, v1

    .line 85
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x1c

    aput-boolean v8, v2, v4

    .line 86
    invoke-static {v3}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForNoteInDialog(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v3, 0x1d

    aput-boolean v8, v2, v3

    .line 87
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f050025

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput-boolean v8, v2, v5

    .line 88
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v3, 0x1f

    aput-boolean v8, v2, v3

    .line 89
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 85
    const/16 v3, 0x20

    aput-boolean v8, v2, v3

    return-object v1

    .line 77
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    const/16 v1, 0x17

    aput-boolean v8, v2, v1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->toLocalDate()Lorg/joda/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x18

    aput-boolean v8, v2, v5

    .line 79
    invoke-virtual {v4}, Lorg/joda/time/DateTime;->toLocalTime()Lorg/joda/time/LocalTime;

    move-result-object v4

    const-string v5, "HH:mm"

    invoke-virtual {v4, v5}, Lorg/joda/time/LocalTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x19

    aput-boolean v8, v2, v4

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f050049

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iliakplv/notes/utils/StringUtils;->wrapWithEmptyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "info":Ljava/lang/String;
    const/16 v1, 0x1a

    aput-boolean v8, v2, v1

    goto/16 :goto_0
.end method

.method private createNoteNoLabelsDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    const/16 v4, 0x28

    aput-boolean v5, v0, v4

    .line 114
    invoke-interface {v2, v3}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForNoteInDialog(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050044

    const/16 v3, 0x29

    aput-boolean v5, v0, v3

    .line 115
    invoke-virtual {p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iliakplv/notes/utils/StringUtils;->wrapWithEmptyLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050026

    const/4 v3, 0x0

    const/16 v4, 0x2a

    aput-boolean v5, v0, v4

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050029

    new-instance v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$2;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$2;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;)V

    const/16 v4, 0x2b

    aput-boolean v5, v0, v4

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x2c

    aput-boolean v5, v0, v2

    .line 124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 113
    const/16 v2, 0x2d

    aput-boolean v5, v0, v2

    return-object v1
.end method

.method public static show(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;Ljava/io/Serializable;Landroid/app/FragmentManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;-><init>()V

    const/16 v2, 0x3b

    aput-boolean v4, v0, v2

    .line 161
    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createArgumentsBundle(Ljava/io/Serializable;)Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x3c

    aput-boolean v4, v0, v3

    .line 162
    const-string v3, "dialog_type"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v3, 0x3d

    aput-boolean v4, v0, v3

    .line 163
    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0x3e

    aput-boolean v4, v0, v2

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item_dialog_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 165
    const/16 v1, 0x3f

    aput-boolean v4, v0, v1

    return-void
.end method

.method private showSimpleDialogForCurrentItem(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->show(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;Ljava/io/Serializable;Landroid/app/FragmentManager;)V

    .line 169
    const/16 v1, 0x40

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->$jacocoInit()[Z

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "dialog_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    aput-boolean v5, v1, v5

    .line 34
    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$4;->$SwitchMap$com$iliakplv$notes$gui$main$dialogs$SimpleItemDialog$DialogType:[I

    invoke-virtual {v0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown dialog type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    throw v2

    .line 38
    :pswitch_0
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createNoteActionsDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v5, v1, v2

    .line 50
    :goto_0
    return-object v0

    .line 40
    :pswitch_1
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createNoteInfoDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x3

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 42
    :pswitch_2
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createNoteDeleteDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 44
    :pswitch_3
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createNoteNoLabelsDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x5

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 48
    :pswitch_4
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createLabelActionsDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 50
    :pswitch_5
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createLabelDeleteDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
