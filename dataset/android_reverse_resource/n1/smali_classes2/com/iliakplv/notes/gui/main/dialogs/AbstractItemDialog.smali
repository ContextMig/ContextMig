.class public abstract Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;
.super Landroid/app/DialogFragment;
.source "AbstractItemDialog.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_ID:Ljava/lang/String; = "item_id"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected id:Ljava/io/Serializable;

.field protected storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c4d322245fc058cL

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/AbstractItemDialog"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 16
    invoke-static {}, Lcom/iliakplv/notes/notes/storage/Storage;->getStorage()Lcom/iliakplv/notes/notes/storage/NotesStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    aput-boolean v2, v0, v2

    return-void
.end method

.method protected static createArgumentsBundle(Ljava/io/Serializable;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xa

    aput-boolean v3, v0, v2

    .line 41
    const-string v2, "item_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 25
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->activity:Landroid/app/Activity;

    .line 26
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 32
    invoke-virtual {p0}, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 33
    if-nez v1, :cond_0

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 34
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Item id required"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-boolean v3, v0, v2

    throw v1

    .line 33
    :cond_0
    const-string v2, "item_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 36
    :cond_1
    const-string v2, "item_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    iput-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/AbstractItemDialog;->id:Ljava/io/Serializable;

    .line 37
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    return-void
.end method
