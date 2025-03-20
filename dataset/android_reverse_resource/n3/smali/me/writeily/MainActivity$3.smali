.class Lme/writeily/MainActivity$3;
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

    sget-object v0, Lme/writeily/MainActivity$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4a761d3b97dd5b2bL    # -8.648334741952659E-51

    const-string v2, "me/writeily/MainActivity$3"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity$3;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    iput-object p1, p0, Lme/writeily/MainActivity$3;->this$0:Lme/writeily/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity$3;->$jacocoInit()[Z

    move-result-object v1

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "confirm_delete_dialog_tag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    aput-boolean v3, v1, v3

    .line 80
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "confirm_overwrite_dialog_tag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 83
    :goto_1
    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 76
    invoke-static {}, Lme/writeily/model/WriteilySingleton;->getInstance()Lme/writeily/model/WriteilySingleton;

    move-result-object v0

    iget-object v2, p0, Lme/writeily/MainActivity$3;->this$0:Lme/writeily/MainActivity;

    invoke-static {v2}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/writeily/model/WriteilySingleton;->deleteSelectedItems(Ljava/util/List;)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 77
    iget-object v0, p0, Lme/writeily/MainActivity$3;->this$0:Lme/writeily/MainActivity;

    invoke-static {v0}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v0

    iget-object v2, p0, Lme/writeily/MainActivity$3;->this$0:Lme/writeily/MainActivity;

    invoke-static {v2}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    const/4 v0, 0x4

    aput-boolean v3, v1, v0

    .line 78
    iget-object v0, p0, Lme/writeily/MainActivity$3;->this$0:Lme/writeily/MainActivity;

    invoke-static {v0}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v0

    invoke-virtual {v0}, Lme/writeily/NotesFragment;->finishActionMode()V

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 81
    iget-object v2, p0, Lme/writeily/MainActivity$3;->this$0:Lme/writeily/MainActivity;

    const-string v0, "SOURCE_FILE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v2, p1, v0}, Lme/writeily/MainActivity;->access$300(Lme/writeily/MainActivity;Landroid/content/Context;Ljava/io/File;)V

    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    goto :goto_1
.end method
