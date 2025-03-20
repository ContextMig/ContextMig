.class Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;
.super Ljava/lang/Object;
.source "SimpleItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteActionDialogClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final DELETE_INDEX:I

.field private final INFO_INDEX:I

.field private final LABELS_INDEX:I

.field private final SHARE_INDEX:I

.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x46f0dd37dd61eedL

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 198
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->LABELS_INDEX:I

    .line 194
    iput v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->SHARE_INDEX:I

    .line 195
    const/4 v1, 0x2

    iput v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->INFO_INDEX:I

    .line 196
    const/4 v1, 0x3

    iput v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->DELETE_INDEX:I

    .line 198
    aput-boolean v3, v0, v2

    return-void
.end method

.method private shareNote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 230
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v0, v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v2, "note_options_share"

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v0, 0xd

    aput-boolean v4, v1, v0

    .line 231
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v0, v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v2, v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    invoke-interface {v2, v3}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getNote(Ljava/io/Serializable;)Lcom/iliakplv/notes/notes/AbstractNote;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/iliakplv/notes/notes/NotesUtils;->shareNote(Landroid/content/Context;Lcom/iliakplv/notes/notes/AbstractNote;Z)V

    .line 232
    const/16 v0, 0xe

    aput-boolean v4, v1, v0

    return-void
.end method

.method private showNoteLabelsDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->$jacocoInit()[Z

    move-result-object v2

    .line 219
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    invoke-interface {v1}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->getAllLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 220
    .local v0, "noLabelsCreated":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x7

    aput-boolean v4, v2, v1

    .line 221
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v3, "note_options_labels_first"

    invoke-virtual {v1, v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-boolean v4, v2, v1

    .line 222
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    sget-object v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteNoLabels:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-static {v1, v3}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->access$000(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;)V

    const/16 v1, 0x9

    aput-boolean v4, v2, v1

    .line 227
    :goto_0
    const/16 v1, 0xc

    aput-boolean v4, v2, v1

    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    check-cast v1, Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v3, "note_options_labels"

    invoke-virtual {v1, v3}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v4, v2, v1

    .line 225
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v1, v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v3, v3, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    invoke-static {v1, v3}, Lcom/iliakplv/notes/gui/main/dialogs/NoteLabelsDialog;->show(Landroid/app/FragmentManager;Ljava/io/Serializable;)V

    const/16 v1, 0xb

    aput-boolean v4, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 202
    packed-switch p2, :pswitch_data_0

    aput-boolean v3, v0, v3

    .line 216
    :goto_0
    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    return-void

    .line 204
    :pswitch_0
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->showNoteLabelsDialog()V

    .line 205
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-direct {p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->shareNote()V

    .line 208
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteInfo:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-static {v1, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->access$000(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;)V

    .line 211
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$NoteActionDialogClickListener;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    sget-object v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;->NoteDelete:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;

    invoke-static {v1, v2}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->access$000(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$DialogType;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
