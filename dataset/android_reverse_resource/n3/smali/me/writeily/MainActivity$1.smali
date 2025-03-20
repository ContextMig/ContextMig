.class Lme/writeily/MainActivity$1;
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

    sget-object v0, Lme/writeily/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7107ca28d2f20ab1L    # 3.025626483285058E236

    const-string v2, "me/writeily/MainActivity$1"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iput-object p1, p0, Lme/writeily/MainActivity$1;->this$0:Lme/writeily/MainActivity;

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

    invoke-static {}, Lme/writeily/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create_folder_dialog_tag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aput-boolean v4, v0, v4

    .line 54
    :goto_0
    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    return-void

    .line 50
    :cond_0
    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 51
    iget-object v1, p0, Lme/writeily/MainActivity$1;->this$0:Lme/writeily/MainActivity;

    new-instance v2, Ljava/io/File;

    const-string v3, "folder_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lme/writeily/MainActivity;->access$000(Lme/writeily/MainActivity;Ljava/io/File;)Z

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    .line 52
    iget-object v1, p0, Lme/writeily/MainActivity$1;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/MainActivity$1;->this$0:Lme/writeily/MainActivity;

    invoke-static {v2}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v2

    invoke-virtual {v2}, Lme/writeily/NotesFragment;->getCurrentDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/NotesFragment;->listFilesInDirectory(Ljava/io/File;)V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
