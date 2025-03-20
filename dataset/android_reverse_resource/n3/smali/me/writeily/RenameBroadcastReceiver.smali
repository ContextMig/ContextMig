.class Lme/writeily/RenameBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RenameBroadcastReceiver.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private notesFragment:Lme/writeily/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/RenameBroadcastReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x231acc7d271db9d0L    # -3.1559402079451387E139

    const-string v2, "me/writeily/RenameBroadcastReceiver"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/RenameBroadcastReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lme/writeily/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/RenameBroadcastReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lme/writeily/RenameBroadcastReceiver;->notesFragment:Lme/writeily/NotesFragment;

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/RenameBroadcastReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RENAME_DIALOG_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v5, v0, v5

    .line 42
    :goto_0
    const/16 v1, 0xe

    aput-boolean v5, v0, v1

    :goto_1
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x2

    aput-boolean v5, v0, v1

    .line 24
    const-string v1, "RENAME_NEW_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-boolean v5, v0, v2

    .line 25
    new-instance v2, Ljava/io/File;

    const-string v3, "SOURCE_FILE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-boolean v5, v0, v3

    .line 26
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-boolean v5, v0, v1

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    aput-boolean v5, v0, v1

    .line 29
    const v1, 0x7f060066

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x7

    aput-boolean v5, v0, v1

    .line 30
    iget-object v1, p0, Lme/writeily/RenameBroadcastReceiver;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->finishActionMode()V

    .line 31
    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 35
    const v1, 0x7f060068

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 36
    iget-object v1, p0, Lme/writeily/RenameBroadcastReceiver;->notesFragment:Lme/writeily/NotesFragment;

    iget-object v2, p0, Lme/writeily/RenameBroadcastReceiver;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    .line 40
    :goto_2
    iget-object v1, p0, Lme/writeily/RenameBroadcastReceiver;->notesFragment:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->finishActionMode()V

    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    goto/16 :goto_0

    .line 38
    :cond_2
    const v1, 0x7f060067

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    goto :goto_2
.end method
