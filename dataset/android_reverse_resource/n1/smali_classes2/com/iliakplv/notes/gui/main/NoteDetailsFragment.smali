.class public Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;
.super Landroid/app/Fragment;
.source "NoteDetailsFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final ARG_NOTE_ID:Ljava/lang/String; = "note_id"

.field public static final ARG_TEXT:Ljava/lang/String; = "text"

.field public static final ARG_TITLE:Ljava/lang/String; = "title"

.field private static final LINKIFY_MASK:I = 0x7

.field private static final PREFS_KEY_LINKIFY:Ljava/lang/String; = "linkify_note_text"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private body:Landroid/widget/EditText;

.field private mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

.field private newNoteCreationMode:Z

.field private noteId:Ljava/io/Serializable;

.field private final storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

.field private textFromArgs:Ljava/lang/String;

.field private title:Landroid/widget/EditText;

.field private titleFromArgs:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x29c1f3e60da9d225L

    const-string v2, "com/iliakplv/notes/gui/main/NoteDetailsFragment"

    const/16 v3, 0x46

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    const-class v1, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    const/16 v1, 0x45

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 40
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getStorage()Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    aput-boolean v2, v0, v2

    return-void
.end method

.method private linkifyNoteBody()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    .line 98
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x18

    aput-boolean v4, v0, v2

    .line 99
    const-string v2, "linkify_note_text"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    .line 102
    :goto_0
    const/16 v1, 0x1c

    aput-boolean v4, v0, v1

    return-void

    .line 99
    :cond_0
    const/16 v1, 0x1a

    aput-boolean v4, v0, v1

    .line 100
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->body:Landroid/widget/EditText;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    const/16 v1, 0x1b

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private saveNote()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v3

    .line 147
    const-string v2, "saveNote(): "

    const/16 v2, 0x2e

    aput-boolean v7, v3, v2

    .line 149
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    aput-boolean v7, v3, v4

    .line 150
    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->body:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "bodyText":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->newNoteCreationMode:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x30

    aput-boolean v7, v3, v4

    .line 153
    invoke-static {v2}, Lcom/iliakplv/notes/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x31

    aput-boolean v7, v3, v4

    .line 158
    :goto_0
    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    new-instance v5, Lcom/iliakplv/notes/notes/TextNote;

    invoke-direct {v5, v2, v0}, Lcom/iliakplv/notes/notes/TextNote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->insertNote(Lcom/iliakplv/notes/notes/AbstractNote;)Ljava/io/Serializable;

    move-result-object v2

    const/16 v4, 0x35

    aput-boolean v7, v3, v4

    .line 159
    sget-object v4, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveNote(): New note saved. Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v2, 0x36

    aput-boolean v7, v3, v2

    .line 180
    :goto_1
    const/16 v2, 0x44

    aput-boolean v7, v3, v2

    return-void

    .line 153
    :cond_0
    invoke-static {v0}, Lcom/iliakplv/notes/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x32

    aput-boolean v7, v3, v4

    goto :goto_0

    :cond_1
    const/16 v2, 0x33

    aput-boolean v7, v3, v2

    .line 155
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f05002c

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x34

    aput-boolean v7, v3, v2

    goto :goto_1

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->noteId:Ljava/io/Serializable;

    invoke-interface {v4, v5}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v1

    .line 163
    .local v1, "note":Lcom/iliakplv/notes/notes/AbstractNote;
    if-eqz v1, :cond_6

    const/16 v4, 0x37

    aput-boolean v7, v3, v4

    .line 164
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/iliakplv/notes/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x38

    aput-boolean v7, v3, v4

    .line 167
    :goto_2
    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/notes/AbstractNote;->setTitle(Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-boolean v7, v3, v2

    .line 168
    invoke-virtual {v1, v0}, Lcom/iliakplv/notes/notes/AbstractNote;->setBody(Ljava/lang/String;)V

    const/16 v2, 0x3c

    aput-boolean v7, v3, v2

    .line 169
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->updateChangeTime()V

    const/16 v2, 0x3d

    aput-boolean v7, v3, v2

    .line 170
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->noteId:Ljava/io/Serializable;

    invoke-interface {v2, v4, v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->updateNote(Ljava/io/Serializable;Lcom/iliakplv/notes/notes/AbstractNote;)Z

    move-result v2

    const/16 v4, 0x3e

    aput-boolean v7, v3, v4

    .line 171
    sget-object v4, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveNote(): Note data changed. Storage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_4

    const-string v2, ""

    const/16 v6, 0x3f

    aput-boolean v7, v3, v6

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "updated."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/16 v2, 0x41

    aput-boolean v7, v3, v2

    goto/16 :goto_1

    .line 164
    :cond_3
    const/16 v4, 0x39

    aput-boolean v7, v3, v4

    .line 165
    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/iliakplv/notes/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x3a

    aput-boolean v7, v3, v4

    goto :goto_2

    .line 171
    :cond_4
    const-string v2, "NOT (!!!) "

    const/16 v6, 0x40

    aput-boolean v7, v3, v6

    goto :goto_3

    .line 174
    :cond_5
    sget-object v2, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    const-string v4, "saveNote(): Note data not changed."

    invoke-static {v2, v4}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x42

    aput-boolean v7, v3, v2

    goto/16 :goto_1

    .line 177
    :cond_6
    sget-object v2, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    const-string v4, "saveNote(): Note entry is null (!!!)"

    invoke-static {v2, v4}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x43

    aput-boolean v7, v3, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    check-cast p1, Lcom/iliakplv/notes/gui/main/MainActivity;

    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    .line 68
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v2, "note_details_back"

    invoke-virtual {v1, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    .line 143
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->saveNote()V

    .line 144
    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 56
    invoke-virtual {p0, v4}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->setHasOptionsMenu(Z)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 57
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "note_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->noteId:Ljava/io/Serializable;

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 58
    sget-object v1, Lcom/iliakplv/notes/gui/main/MainActivity;->NEW_NOTE:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->noteId:Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->newNoteCreationMode:Z

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 59
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->titleFromArgs:Ljava/lang/String;

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 60
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->textFromArgs:Ljava/lang/String;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 61
    sget-object v1, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() call. Note id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->noteId:Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iliakplv/notes/utils/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/MainActivity;->isDrawerOpened()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    .line 107
    const v1, 0x7f0b0003

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    .line 111
    :goto_0
    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    return-void

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v4

    .line 72
    const v2, 0x7f030006

    invoke-virtual {p1, v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const/16 v2, 0xa

    aput-boolean v3, v4, v2

    .line 73
    const v2, 0x7f0c0015

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->title:Landroid/widget/EditText;

    const/16 v2, 0xb

    aput-boolean v3, v4, v2

    .line 74
    const v2, 0x7f0c0016

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->body:Landroid/widget/EditText;

    .line 76
    if-eqz p3, :cond_0

    const/16 v2, 0xc

    aput-boolean v3, v4, v2

    move v0, v3

    .line 78
    .local v0, "fromSaveInstanceState":Z
    :goto_0
    if-eqz v0, :cond_1

    const/16 v2, 0xe

    aput-boolean v3, v4, v2

    .line 91
    :goto_1
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->linkifyNoteBody()V

    .line 93
    const/16 v2, 0x16

    aput-boolean v3, v4, v2

    return-object v5

    .line 76
    .end local v0    # "fromSaveInstanceState":Z
    :cond_0
    const/16 v2, 0xd

    aput-boolean v3, v4, v2

    goto :goto_0

    .line 79
    .restart local v0    # "fromSaveInstanceState":Z
    :cond_1
    iget-boolean v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->newNoteCreationMode:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xf

    aput-boolean v3, v4, v2

    .line 80
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->title:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->titleFromArgs:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x10

    aput-boolean v3, v4, v2

    .line 81
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->body:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->textFromArgs:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    aput-boolean v3, v4, v2

    goto :goto_1

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v6, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->noteId:Ljava/io/Serializable;

    invoke-interface {v2, v6}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v1

    .line 84
    .local v1, "note":Lcom/iliakplv/notes/notes/AbstractNote;
    if-nez v1, :cond_3

    const/16 v2, 0x12

    aput-boolean v3, v4, v2

    goto :goto_1

    :cond_3
    const/16 v2, 0x13

    aput-boolean v3, v4, v2

    .line 85
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x14

    aput-boolean v3, v4, v2

    .line 86
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->body:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x15

    aput-boolean v3, v4, v2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->$jacocoInit()[Z

    move-result-object v4

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 116
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    const/16 v5, 0x2b

    aput-boolean v2, v4, v5

    move v2, v3

    :goto_0
    return v2

    .line 118
    :pswitch_0
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v5, "note_details_save"

    invoke-virtual {v3, v5}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v3, 0x21

    aput-boolean v2, v4, v3

    .line 119
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    invoke-virtual {v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->onBackPressed()V

    .line 120
    const/16 v3, 0x22

    aput-boolean v2, v4, v3

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->mainActivity:Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v5, "note_details_discard"

    invoke-virtual {v3, v5}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    .line 124
    iget-boolean v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->newNoteCreationMode:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    aput-boolean v2, v4, v3

    .line 125
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->title:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->titleFromArgs:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x24

    aput-boolean v2, v4, v3

    .line 126
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->body:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->textFromArgs:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x25

    aput-boolean v2, v4, v3

    .line 134
    :goto_1
    const/16 v3, 0x2a

    aput-boolean v2, v4, v3

    goto :goto_0

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->noteId:Ljava/io/Serializable;

    invoke-interface {v3, v5}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v1

    .line 129
    .local v1, "note":Lcom/iliakplv/notes/notes/AbstractNote;
    if-nez v1, :cond_1

    const/16 v3, 0x26

    aput-boolean v2, v4, v3

    goto :goto_1

    :cond_1
    const/16 v3, 0x27

    aput-boolean v2, v4, v3

    .line 130
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->title:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x28

    aput-boolean v2, v4, v3

    .line 131
    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/NoteDetailsFragment;->body:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/AbstractNote;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x29

    aput-boolean v2, v4, v3

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c002c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
