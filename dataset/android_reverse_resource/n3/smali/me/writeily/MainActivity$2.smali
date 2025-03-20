.class Lme/writeily/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/MainActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x509391bdca0e0917L    # -2.99722043823918E-80

    const-string v2, "me/writeily/MainActivity$2"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iput-object p1, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/MainActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    const-string v1, "filesystem_file_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "filesystem_import_dialog_tag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 62
    iget-object v2, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lme/writeily/MainActivity;->access$200(Lme/writeily/MainActivity;Ljava/io/File;)V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 63
    iget-object v1, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    invoke-static {v2}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 69
    :goto_0
    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    return-void

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "filesystem_move_dialog_tag"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 65
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    invoke-static {v3}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v3

    invoke-virtual {v3}, Lme/writeily/NotesFragment;->getSelectedItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lme/writeily/model/WriteilySingleton;->moveSelectedNotes(Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 66
    iget-object v1, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    invoke-static {v2}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 67
    iget-object v1, p0, Lme/writeily/MainActivity$2;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->finishActionMode()V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
