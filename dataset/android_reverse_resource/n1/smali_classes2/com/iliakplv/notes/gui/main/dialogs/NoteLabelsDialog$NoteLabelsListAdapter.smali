.class Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NoteLabelsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteLabelsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/iliakplv/notes/notes/Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final allLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iliakplv/notes/notes/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final currentLabels:[Z

.field private final labelsColors:[I

.field private final noteId:Ljava/io/Serializable;

.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x13b4ca19eb0b0711L    # 9.649087703236736E-214

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter"

    const/16 v3, 0x27

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;Ljava/io/Serializable;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 84
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    aput-boolean v5, v2, v0

    .line 85
    iget-object v1, p1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->activity:Landroid/app/Activity;

    iget-object v3, p1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v3}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    aput-boolean v5, v2, v5

    .line 86
    invoke-virtual {p1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->labelsColors:[I

    .line 88
    iput-object p2, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->noteId:Ljava/io/Serializable;

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 89
    iget-object v1, p1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->allLabels:Ljava/util/List;

    const/4 v1, 0x3

    aput-boolean v5, v2, v1

    .line 91
    iget-object v1, p1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1, p2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getLabelsIdsForNote(Ljava/io/Serializable;)Ljava/util/Set;

    move-result-object v3

    const/4 v1, 0x4

    aput-boolean v5, v2, v1

    .line 92
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->allLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->currentLabels:[Z

    .line 93
    const/4 v1, 0x5

    aput-boolean v5, v2, v1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->currentLabels:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x6

    aput-boolean v5, v2, v1

    .line 94
    iget-object v4, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->currentLabels:[Z

    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->allLabels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iliakplv/notes/notes/Label;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/Label;->getId()Ljava/io/Serializable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v1, v4, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->access$000(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    aput-boolean v5, v2, v1

    .line 99
    :goto_1
    const/16 v1, 0xb

    aput-boolean v5, v2, v1

    return-void

    .line 96
    :cond_1
    const/16 v1, 0x9

    aput-boolean v5, v2, v1

    .line 97
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->currentLabels:[Z

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->currentLabels:[Z

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    invoke-static {p1, v1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->access$102(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;[Z)[Z

    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;)Ljava/io/Serializable;
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->noteId:Ljava/io/Serializable;

    const/16 v2, 0x26

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public applyNoteLabelsChanges()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 135
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0x17

    aput-boolean v6, v2, v1

    .line 136
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v1, 0x18

    aput-boolean v6, v2, v1

    .line 138
    const/4 v0, 0x0

    const/16 v1, 0x19

    aput-boolean v6, v2, v1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->allLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/16 v1, 0x1a

    aput-boolean v6, v2, v1

    .line 139
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->allLabels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iliakplv/notes/notes/Label;

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/Label;->getId()Ljava/io/Serializable;

    move-result-object v1

    const/16 v5, 0x1b

    aput-boolean v6, v2, v5

    .line 140
    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->currentLabels:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_0

    const/16 v5, 0x1c

    aput-boolean v6, v2, v5

    .line 142
    :goto_1
    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->currentLabels:[Z

    aget-boolean v5, v5, v0

    if-nez v5, :cond_2

    const/16 v1, 0x20

    aput-boolean v6, v2, v1

    .line 138
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x24

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    invoke-static {v5}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->access$100(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;)[Z

    move-result-object v5

    aget-boolean v5, v5, v0

    if-nez v5, :cond_1

    const/16 v5, 0x1d

    aput-boolean v6, v2, v5

    goto :goto_1

    :cond_1
    const/16 v5, 0x1e

    aput-boolean v6, v2, v5

    .line 141
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1f

    aput-boolean v6, v2, v1

    goto :goto_2

    .line 142
    :cond_2
    iget-object v5, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    invoke-static {v5}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->access$100(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;)[Z

    move-result-object v5

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_3

    const/16 v1, 0x21

    aput-boolean v6, v2, v1

    goto :goto_2

    :cond_3
    const/16 v5, 0x22

    aput-boolean v6, v2, v5

    .line 143
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x23

    aput-boolean v6, v2, v1

    goto :goto_2

    .line 147
    :cond_4
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;

    invoke-direct {v1, p0, v4, v3}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$2;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v1}, Lcom/iliakplv/notes/NotesApplication;->executeInBackground(Ljava/lang/Runnable;)V

    .line 158
    const/16 v1, 0x25

    aput-boolean v6, v2, v1

    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->allLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->$jacocoInit()[Z

    move-result-object v2

    .line 109
    if-eqz p2, :cond_0

    .line 110
    const/16 v0, 0xd

    aput-boolean v5, v2, v0

    .line 115
    .end local p2    # "view":Landroid/view/View;
    :goto_0
    const v0, 0x7f0c000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v0, 0xf

    aput-boolean v5, v2, v0

    .line 116
    const v0, 0x7f0c0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    .line 118
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->allLabels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iliakplv/notes/notes/Label;

    const/16 v4, 0x11

    aput-boolean v5, v2, v4

    .line 119
    invoke-static {v1}, Lcom/iliakplv/notes/notes/NotesUtils;->getTitleForLabel(Lcom/iliakplv/notes/notes/Label;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x12

    aput-boolean v5, v2, v0

    .line 120
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->labelsColors:[I

    invoke-virtual {v1}, Lcom/iliakplv/notes/notes/Label;->getColor()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0x13

    aput-boolean v5, v2, v0

    .line 122
    const v0, 0x7f0c000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v1, 0x14

    aput-boolean v5, v2, v1

    .line 123
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->access$100(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v1, 0x15

    aput-boolean v5, v2, v1

    .line 124
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const/16 v0, 0x16

    aput-boolean v5, v2, v0

    return-object p2

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog$NoteLabelsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0xe

    aput-boolean v5, v2, v0

    goto :goto_0
.end method
