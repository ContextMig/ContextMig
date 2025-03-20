.class Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;
.super Ljava/lang/Object;
.source "SimpleItemDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x64e599fa80c09e8dL

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->$jacocoInit()[Z

    move-result-object v1

    .line 104
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;

    iget-object v0, v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v0, v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/iliakplv/notes/gui/main/MainActivity;

    const-string v2, "note_deleted"

    invoke-virtual {v0, v2}, Lcom/iliakplv/notes/gui/main/MainActivity;->logEvent(Ljava/lang/String;)V

    aput-boolean v3, v1, v3

    .line 105
    iget-object v0, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;

    iget-object v0, v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v0, v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->storage:Lcom/iliakplv/notes/notes/storage/NotesStorage;

    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1$1;->this$1:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;

    iget-object v2, v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iget-object v2, v2, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->id:Ljava/io/Serializable;

    invoke-interface {v0, v2}, Lcom/iliakplv/notes/notes/storage/NotesStorage;->deleteNote(Ljava/io/Serializable;)Z

    .line 106
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    return-void
.end method
