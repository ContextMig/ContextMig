.class public Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;
.super Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;
.source "NoteLabelsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final EXTRA_SELECTED_LABELS:Ljava/lang/String; = "selected_labels"

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "note_labels_dialog"


# instance fields
.field private fromSavedInstanceState:Z

.field private selectedLabels:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x66fb6de125723524L    # 1.1934678308963116E188

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;-><init>()V

    .line 32
    iput-boolean v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->fromSavedInstanceState:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->fromSavedInstanceState:Z

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;)[Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->selectedLabels:[Z

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;[Z)[Z
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->selectedLabels:[Z

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/io/Serializable;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    invoke-direct {v1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;-><init>()V

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    .line 63
    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->createArgumentsBundle(Ljava/io/Serializable;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->setArguments(Landroid/os/Bundle;)V

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    .line 64
    const-string v2, "note_labels_dialog"

    invoke-virtual {v1, p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    if-nez p1, :cond_0

    aput-boolean v6, v0, v6

    .line 41
    :goto_0
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->id:Ljava/io/Serializable;

    invoke-direct {v1, p0, v2}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;Ljava/io/Serializable;)V

    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 42
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->id:Ljava/io/Serializable;

    const/4 v5, 0x5

    aput-boolean v6, v0, v5

    .line 43
    invoke-interface {v3, v4}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v3

    invoke-static {v3}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForNoteInDialog(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v6, v0, v3

    .line 44
    invoke-virtual {v2, v1, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050027

    new-instance v4, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$1;

    invoke-direct {v4, p0, v1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;)V

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050024

    const/16 v3, 0x8

    aput-boolean v6, v0, v3

    .line 51
    invoke-virtual {v1, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    .line 52
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 42
    const/16 v2, 0xa

    aput-boolean v6, v0, v2

    return-object v1

    .line 36
    :cond_0
    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 37
    const-string v1, "selected_labels"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->selectedLabels:[Z

    .line 38
    iput-boolean v6, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->fromSavedInstanceState:Z

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    invoke-super {p0, p1}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 58
    const-string v1, "selected_labels"

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->selectedLabels:[Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 59
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    return-void
.end method
