.class public Lchan/android/app/pocketnote/app/notes/EditNoteActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "EditNoteActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final INVALID:I = -0x1


# instance fields
.field private buttonPickColor:Lchan/android/app/pocketnote/util/view/SquareButton;

.field private chosenColor:I

.field private day:I

.field private editTextTitle:Landroid/widget/EditText;

.field private editingNote:Lchan/android/app/pocketnote/app/Note;

.field private layoutBorder:Landroid/widget/LinearLayout;

.field private month:I

.field private noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

.field private oldNote:Z

.field private originalNote:Lchan/android/app/pocketnote/app/Note;

.field private year:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4220cfc7a27f0403L    # 3.6102721855507835E10

    const-string v2, "chan/android/app/pocketnote/app/notes/EditNoteActivity"

    const/16 v3, 0x4e

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 34
    iput v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->chosenColor:I

    .line 36
    iput-boolean v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->oldNote:Z

    .line 42
    iput v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->month:I

    .line 44
    iput v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->day:I

    .line 46
    iput v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->year:I

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$002(Lchan/android/app/pocketnote/app/notes/EditNoteActivity;I)I
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iput p1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->chosenColor:I

    const/16 v1, 0x4b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/notes/EditNoteActivity;)Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->layoutBorder:Landroid/widget/LinearLayout;

    const/16 v2, 0x4c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/app/notes/EditNoteActivity;)Lchan/android/app/pocketnote/app/notes/NoteEditor;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

    const/16 v2, 0x4d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private checkPreferences()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultColor()I

    move-result v1

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->setColor(I)V

    .line 111
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private different(Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/Note;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 163
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x43

    aput-boolean v1, v2, v0

    .line 165
    :goto_0
    const/16 v0, 0x48

    aput-boolean v1, v2, v0

    move v0, v1

    .line 163
    :goto_1
    const/16 v3, 0x4a

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/16 v0, 0x44

    aput-boolean v1, v2, v0

    .line 164
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x45

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    aput-boolean v1, v2, v0

    .line 165
    invoke-virtual {p1}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v0

    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v3

    if-eq v0, v3, :cond_2

    const/16 v0, 0x47

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/16 v3, 0x49

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method private setColor(I)V
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

    invoke-virtual {v1, v3}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->setTextColor(I)V

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    .line 103
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

    invoke-virtual {v1, v3}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->setLineColor(I)V

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    .line 104
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

    invoke-virtual {v1, p1}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->setBackgroundColor(I)V

    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    .line 105
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->layoutBorder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 106
    iput p1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->chosenColor:I

    .line 107
    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getNote()Lchan/android/app/pocketnote/app/Note;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 114
    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editTextTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f

    aput-boolean v8, v7, v3

    .line 115
    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    aput-boolean v8, v7, v3

    .line 116
    invoke-static {v2}, Lchan/android/app/pocketnote/util/TextUtility;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x21

    aput-boolean v8, v7, v3

    .line 120
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x24

    aput-boolean v8, v7, v3

    .line 124
    .local v0, "title":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x26

    aput-boolean v8, v7, v3

    move-object v3, v0

    .line 128
    .end local v0    # "title":Ljava/lang/String;
    :goto_2
    new-instance v1, Lchan/android/app/pocketnote/app/Note;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->chosenColor:I

    invoke-direct/range {v1 .. v6}, Lchan/android/app/pocketnote/app/Note;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 129
    .local v1, "note":Lchan/android/app/pocketnote/app/Note;
    iget v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->year:I

    if-ne v3, v9, :cond_4

    const/16 v3, 0x28

    aput-boolean v8, v7, v3

    .line 134
    :goto_3
    const/16 v3, 0x2f

    aput-boolean v8, v7, v3

    :goto_4
    return-object v1

    .line 116
    .end local v1    # "note":Lchan/android/app/pocketnote/app/Note;
    :cond_0
    invoke-static {v0}, Lchan/android/app/pocketnote/util/TextUtility;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x22

    aput-boolean v8, v7, v3

    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    const/16 v3, 0x23

    aput-boolean v8, v7, v3

    goto :goto_4

    .line 121
    .restart local v0    # "title":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x25

    aput-boolean v8, v7, v3

    move-object v2, v0

    goto :goto_1

    .line 125
    .local v2, "content":Ljava/lang/String;
    :cond_3
    const/16 v3, 0x27

    aput-boolean v8, v7, v3

    .end local v0    # "title":Ljava/lang/String;
    move-object v3, v2

    goto :goto_2

    .line 129
    .end local v2    # "content":Ljava/lang/String;
    .restart local v1    # "note":Lchan/android/app/pocketnote/app/Note;
    :cond_4
    iget v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->month:I

    if-ne v3, v9, :cond_5

    const/16 v3, 0x29

    aput-boolean v8, v7, v3

    goto :goto_3

    :cond_5
    iget v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->day:I

    if-ne v3, v9, :cond_6

    const/16 v3, 0x2a

    aput-boolean v8, v7, v3

    goto :goto_3

    :cond_6
    const/16 v3, 0x2b

    aput-boolean v8, v7, v3

    .line 130
    iget v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->year:I

    invoke-virtual {v1, v3}, Lchan/android/app/pocketnote/app/Note;->setYear(I)V

    const/16 v3, 0x2c

    aput-boolean v8, v7, v3

    .line 131
    iget v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->month:I

    invoke-virtual {v1, v3}, Lchan/android/app/pocketnote/app/Note;->setMonth(I)V

    const/16 v3, 0x2d

    aput-boolean v8, v7, v3

    .line 132
    iget v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->day:I

    invoke-virtual {v1, v3}, Lchan/android/app/pocketnote/app/Note;->setDay(I)V

    const/16 v3, 0x2e

    aput-boolean v8, v7, v3

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->getNote()Lchan/android/app/pocketnote/app/Note;

    move-result-object v0

    .line 140
    .local v0, "note":Lchan/android/app/pocketnote/app/Note;
    if-nez v0, :cond_0

    const/16 v2, 0x30

    aput-boolean v4, v1, v2

    .line 144
    :goto_0
    iget-boolean v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->oldNote:Z

    if-nez v2, :cond_2

    const/16 v2, 0x36

    aput-boolean v4, v1, v2

    .line 154
    :goto_1
    if-nez v0, :cond_4

    const/16 v2, 0x3f

    aput-boolean v4, v1, v2

    .line 159
    :goto_2
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 160
    const/16 v2, 0x42

    aput-boolean v4, v1, v2

    return-void

    .line 140
    :cond_0
    iget-boolean v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->oldNote:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x31

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x32

    aput-boolean v4, v1, v2

    .line 141
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->add(Lchan/android/app/pocketnote/app/Note;)V

    const/16 v2, 0x33

    aput-boolean v4, v1, v2

    .line 142
    iget v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->chosenColor:I

    invoke-virtual {v0, v2}, Lchan/android/app/pocketnote/app/Note;->setColor(I)V

    const/16 v2, 0x34

    aput-boolean v4, v1, v2

    .line 143
    const-string v2, "Saved"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x35

    aput-boolean v4, v1, v2

    goto :goto_1

    .line 144
    :cond_2
    const/16 v2, 0x37

    aput-boolean v4, v1, v2

    .line 145
    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/Note;->setTitle(Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-boolean v4, v1, v2

    .line 146
    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/Note;->setContent(Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-boolean v4, v1, v2

    .line 147
    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/Note;->setColor(I)V

    const/16 v2, 0x3a

    aput-boolean v4, v1, v2

    .line 148
    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->originalNote:Lchan/android/app/pocketnote/app/Note;

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-direct {p0, v2, v3}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->different(Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/Note;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x3b

    aput-boolean v4, v1, v2

    goto :goto_1

    :cond_3
    const/16 v2, 0x3c

    aput-boolean v4, v1, v2

    .line 149
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v2, v3}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->edit(Lchan/android/app/pocketnote/app/Note;)V

    const/16 v2, 0x3d

    aput-boolean v4, v1, v2

    .line 150
    const-string v2, "Updated"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x3e

    aput-boolean v4, v1, v2

    goto/16 :goto_1

    .line 154
    :cond_4
    const/16 v2, 0x40

    aput-boolean v4, v1, v2

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Note mm-dd-yyyy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getMonth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v2, 0x41

    aput-boolean v4, v1, v2

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 50
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v8, v7, v8

    .line 51
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->setContentView(I)V

    const/4 v1, 0x2

    aput-boolean v8, v7, v1

    .line 53
    const v1, 0x7f0c0061

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->layoutBorder:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    aput-boolean v8, v7, v1

    .line 55
    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editTextTitle:Landroid/widget/EditText;

    const/4 v1, 0x4

    aput-boolean v8, v7, v1

    .line 56
    const v1, 0x7f0c0064

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/notes/NoteEditor;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

    const/4 v1, 0x5

    aput-boolean v8, v7, v1

    .line 58
    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/util/view/SquareButton;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->buttonPickColor:Lchan/android/app/pocketnote/util/view/SquareButton;

    const/4 v1, 0x6

    aput-boolean v8, v7, v1

    .line 59
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->buttonPickColor:Lchan/android/app/pocketnote/util/view/SquareButton;

    new-instance v2, Lchan/android/app/pocketnote/app/notes/EditNoteActivity$1;

    invoke-direct {v2, p0}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity$1;-><init>(Lchan/android/app/pocketnote/app/notes/EditNoteActivity;)V

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/util/view/SquareButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x7

    aput-boolean v8, v7, v1

    .line 78
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    aput-boolean v8, v7, v1

    .line 80
    const-string v1, "note_bundle_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/Note;

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    .line 81
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    if-nez v1, :cond_0

    const/16 v1, 0x9

    aput-boolean v8, v7, v1

    .line 90
    :goto_0
    const-string v1, "year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x10

    aput-boolean v8, v7, v1

    .line 99
    :goto_1
    const/16 v1, 0x19

    aput-boolean v8, v7, v1

    return-void

    .line 81
    :cond_0
    const/16 v1, 0xa

    aput-boolean v8, v7, v1

    .line 82
    new-instance v1, Lchan/android/app/pocketnote/app/Note;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v3}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v4

    iget-object v6, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v6}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lchan/android/app/pocketnote/app/Note;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->originalNote:Lchan/android/app/pocketnote/app/Note;

    const/16 v1, 0xb

    aput-boolean v8, v7, v1

    .line 83
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->noteEditor:Lchan/android/app/pocketnote/app/notes/NoteEditor;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xc

    aput-boolean v8, v7, v1

    .line 84
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editTextTitle:Landroid/widget/EditText;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd

    aput-boolean v8, v7, v1

    .line 85
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v1

    iput v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->chosenColor:I

    const/16 v1, 0xe

    aput-boolean v8, v7, v1

    .line 86
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->editingNote:Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v1

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->setColor(I)V

    .line 87
    iput-boolean v8, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->oldNote:Z

    const/16 v1, 0xf

    aput-boolean v8, v7, v1

    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x11

    aput-boolean v8, v7, v1

    goto :goto_1

    :cond_2
    const-string v1, "day"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x12

    aput-boolean v8, v7, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x13

    aput-boolean v8, v7, v1

    .line 91
    const-string v1, "year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->year:I

    const/16 v1, 0x14

    aput-boolean v8, v7, v1

    .line 92
    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->month:I

    const/16 v1, 0x15

    aput-boolean v8, v7, v1

    .line 93
    const-string v1, "day"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->day:I

    const/16 v1, 0x16

    aput-boolean v8, v7, v1

    .line 94
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultColor()I

    move-result v1

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->setColor(I)V

    const/16 v1, 0x17

    aput-boolean v8, v7, v1

    goto/16 :goto_1

    .line 97
    :cond_4
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/notes/EditNoteActivity;->checkPreferences()V

    const/16 v1, 0x18

    aput-boolean v8, v7, v1

    goto/16 :goto_1
.end method
