.class public Lcom/iliakplv/notes/gui/main/NotesListFragment;
.super Landroid/app/Fragment;
.source "NotesListFragment.java"

# interfaces
.implements Lcom/iliakplv/notes/notes/storage/NotesStorageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final ALL_LABELS:Ljava/lang/Integer;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private currentLabelId:Ljava/io/Serializable;

.field private isUiVisible:Z

.field private labelsColors:[I

.field private listAdapter:Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;

.field private mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

.field private noNotesText:Landroid/widget/TextView;

.field private searchQuery:Ljava/lang/String;

.field private showSearchResults:Z

.field private status:Landroid/widget/TextView;

.field private final storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x365fc9d2d5dfadcaL    # -4.627601348079529E46

    const-string v2, "com/iliakplv/notes/gui/main/NotesListFragment"

    const/16 v3, 0x54

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    const-class v1, Lcom/iliakplv/notes/gui/main/NotesListFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/gui/main/NotesListFragment;->TAG:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/iliakplv/notes/notes/storage/NotesStorage;->NOTES_FOR_ALL_LABELS:Ljava/lang/Integer;

    sput-object v1, Lcom/iliakplv/notes/gui/main/NotesListFragment;->ALL_LABELS:Ljava/lang/Integer;

    const/16 v1, 0x53

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->isUiVisible:Z

    .line 38
    iput-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showSearchResults:Z

    aput-boolean v2, v0, v1

    .line 42
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getStorage()Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    .line 43
    sget-object v1, Lcom/iliakplv/notes/gui/main/NotesListFragment;->ALL_LABELS:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->currentLabelId:Ljava/io/Serializable;

    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Lcom/iliakplv/notes/gui/main/MainActivity;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    const/16 v2, 0x4d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getNotesList()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x4e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/iliakplv/notes/gui/main/NotesListFragment;I)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0, p1}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showNoteActionsDialog(I)Z

    move-result v1

    const/16 v2, 0x4f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$300(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateUi()V

    const/16 v1, 0x50

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lcom/iliakplv/notes/gui/main/NotesListFragment;)Lcom/iliakplv/notes/notes/storage/NotesStorage;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    const/16 v2, 0x51

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lcom/iliakplv/notes/gui/main/NotesListFragment;)[I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->labelsColors:[I

    const/16 v2, 0x52

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getNotesList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/AbstractNote;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 119
    iget-boolean v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showSearchResults:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->searchQuery:Ljava/lang/String;

    const/16 v3, 0x15

    aput-boolean v4, v1, v3

    .line 120
    invoke-interface {v0, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNotesForQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x16

    aput-boolean v4, v1, v2

    .line 119
    :goto_0
    const/16 v2, 0x19

    aput-boolean v4, v1, v2

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->currentLabelId:Ljava/io/Serializable;

    const/16 v3, 0x17

    aput-boolean v4, v1, v3

    .line 121
    invoke-interface {v0, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNotesForLabel(Ljava/io/Serializable;)Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x18

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private showNoteActionsDialog(I)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 125
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getNotesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iliakplv/notes/notes/AbstractNote;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getId()Ljava/io/Serializable;

    move-result-object v0

    .line 126
    .local v0, "noteId":Ljava/io/Serializable;
    sget-object v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteActions:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    const/16 v4, 0x1a

    aput-boolean v5, v2, v4

    .line 128
    invoke-virtual {v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const/16 v4, 0x1b

    aput-boolean v5, v2, v4

    .line 126
    invoke-static {v1, v0, v3}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->show(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;Ljava/io/Serializable;Landroid/app/FragmentManager;)V

    .line 129
    const/16 v1, 0x1c

    aput-boolean v5, v2, v1

    return v5
.end method

.method private startListeningStorage()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->addStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z

    .line 213
    const/16 v1, 0x4b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private stopListeningStorage()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p0}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->removeStorageListener(Lcom/iliakplv/notes/notes/storage/NotesStorageListener;)Z

    .line 217
    const/16 v1, 0x4c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateListView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 151
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->isUiVisible:Z

    if-nez v1, :cond_0

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    .line 154
    :goto_0
    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->listAdapter:Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;

    if-nez v1, :cond_1

    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    .line 152
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->listAdapter:Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;->notifyDataSetChanged()V

    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private updateNoNotesText()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 174
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->isUiVisible:Z

    if-nez v1, :cond_0

    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    .line 191
    :goto_0
    const/16 v1, 0x43

    aput-boolean v3, v0, v1

    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const/16 v1, 0x37

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    .line 175
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getNotesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x39

    aput-boolean v3, v0, v1

    .line 176
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showSearchResults:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x3a

    aput-boolean v3, v0, v1

    .line 178
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    const v2, 0x7f05003b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x3b

    aput-boolean v3, v0, v1

    .line 179
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v1, 0x3c

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 180
    :cond_2
    sget-object v1, Lcom/iliakplv/notes/gui/main/NotesListFragment;->ALL_LABELS:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->currentLabelId:Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x3d

    aput-boolean v3, v0, v1

    .line 181
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    const v2, 0x7f05003a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x3e

    aput-boolean v3, v0, v1

    .line 182
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v1, 0x3f

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    const v2, 0x7f05003c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x40

    aput-boolean v3, v0, v1

    .line 185
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v1, 0x41

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x42

    aput-boolean v3, v0, v1

    goto/16 :goto_0
.end method

.method private updateStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->isUiVisible:Z

    if-nez v1, :cond_0

    const/16 v1, 0x27

    aput-boolean v5, v0, v1

    .line 171
    :goto_0
    const/16 v1, 0x35

    aput-boolean v5, v0, v1

    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const/16 v1, 0x28

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showSearchResults:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x29

    aput-boolean v5, v0, v1

    .line 159
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x2a

    aput-boolean v5, v0, v1

    .line 160
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v1, 0x2b

    aput-boolean v5, v0, v1

    .line 161
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    const v2, 0x7f05000a

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->searchQuery:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2c

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 162
    :cond_2
    sget-object v1, Lcom/iliakplv/notes/gui/main/NotesListFragment;->ALL_LABELS:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->currentLabelId:Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2d

    aput-boolean v5, v0, v1

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x34

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->currentLabelId:Ljava/io/Serializable;

    invoke-interface {v1, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v1

    if-nez v1, :cond_4

    const/16 v1, 0x2e

    aput-boolean v5, v0, v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x2f

    aput-boolean v5, v0, v1

    .line 163
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x30

    aput-boolean v5, v0, v1

    .line 164
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->currentLabelId:Ljava/io/Serializable;

    invoke-interface {v1, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabel(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/Label;

    move-result-object v1

    const/16 v2, 0x31

    aput-boolean v5, v0, v2

    .line 165
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->labelsColors:[I

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v2, 0x32

    aput-boolean v5, v0, v2

    .line 166
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    const v3, 0x7f050009

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/16 v1, 0x33

    aput-boolean v5, v0, v1

    goto/16 :goto_0
.end method

.method private updateUi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 205
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateListView()V

    const/16 v1, 0x48

    aput-boolean v2, v0, v1

    .line 206
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateStatus()V

    const/16 v1, 0x49

    aput-boolean v2, v0, v1

    .line 207
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateNoNotesText()V

    .line 208
    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateUiFromBackgroundThread()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    if-nez v1, :cond_0

    const/16 v1, 0x44

    aput-boolean v3, v0, v1

    .line 202
    :goto_0
    const/16 v1, 0x47

    aput-boolean v3, v0, v1

    return-void

    .line 194
    :cond_0
    const/16 v1, 0x45

    aput-boolean v3, v0, v1

    .line 195
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    new-instance v2, Lcom/iliakplv/notes/gui/main/NotesListFragment$5;

    invoke-direct {v2, p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment$5;-><init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V

    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/16 v1, 0x46

    aput-boolean v3, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    check-cast p1, Lcom/iliakplv/notes/gui/main/MainActivity;

    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    .line 56
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 134
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateUiFromBackgroundThread()V

    .line 135
    const/16 v1, 0x1d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 49
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->labelsColors:[I

    .line 50
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    const v0, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 63
    const v0, 0x7f0c0019

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v3, 0x6

    aput-boolean v4, v1, v3

    .line 64
    new-instance v3, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;-><init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V

    iput-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->listAdapter:Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;

    const/4 v3, 0x7

    aput-boolean v4, v1, v3

    .line 65
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->listAdapter:Lcom/iliakplv/notes/gui/main/NotesListFragment$NotesListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v3, 0x8

    aput-boolean v4, v1, v3

    .line 66
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x9

    aput-boolean v4, v1, v3

    .line 67
    new-instance v3, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment$1;-><init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v3, 0xa

    aput-boolean v4, v1, v3

    .line 74
    new-instance v3, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment$2;-><init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 83
    const v0, 0x7f0c0017

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    const/16 v0, 0xc

    aput-boolean v4, v1, v0

    .line 84
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->status:Landroid/widget/TextView;

    new-instance v3, Lcom/iliakplv/notes/gui/main/NotesListFragment$3;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment$3;-><init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 92
    const v0, 0x7f0c0018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    .line 93
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->noNotesText:Landroid/widget/TextView;

    new-instance v3, Lcom/iliakplv/notes/gui/main/NotesListFragment$4;

    invoke-direct {v3, p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment$4;-><init>(Lcom/iliakplv/notes/gui/main/NotesListFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    return-object v2
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->isUiVisible:Z

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 115
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->stopListeningStorage()V

    .line 116
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 106
    iput-boolean v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->isUiVisible:Z

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 107
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->startListeningStorage()V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 108
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateUi()V

    .line 109
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    return-void
.end method

.method public showNotesForLabel(Ljava/io/Serializable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 138
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->currentLabelId:Ljava/io/Serializable;

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showSearchResults:Z

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    .line 140
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateUi()V

    .line 141
    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    return-void
.end method

.method public showNotesForQuery(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->searchQuery:Ljava/lang/String;

    .line 145
    iput-boolean v2, p0, Lcom/iliakplv/notes/gui/main/NotesListFragment;->showSearchResults:Z

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 146
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NotesListFragment;->updateUi()V

    .line 147
    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    return-void
.end method
