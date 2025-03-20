.class Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;
.super Ljava/lang/Object;
.source "NotesDropboxStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5f410bb26ccf3e3fL    # 6.974650725817616E150

    const-string v2, "com/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;->$jacocoInit()[Z

    move-result-object v0

    .line 613
    iput-object p1, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;->this$0:Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;->$jacocoInit()[Z

    move-result-object v1

    .line 616
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;->this$0:Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;

    invoke-static {v0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->access$000(Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x1

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 617
    iget-object v0, p0, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage$1;->this$0:Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;

    invoke-static {v0}, Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;->access$000(Lcom/iliakplv/notes/notes/dropbox/NotesDropboxStorage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iliakplv/notes/notes/storage/NotesStorageListener;

    const/4 v4, 0x3

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 618
    invoke-interface {v0}, Lcom/iliakplv/notes/notes/storage/NotesStorageListener;->onContentChanged()V

    .line 619
    const/4 v0, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    return-void
.end method
