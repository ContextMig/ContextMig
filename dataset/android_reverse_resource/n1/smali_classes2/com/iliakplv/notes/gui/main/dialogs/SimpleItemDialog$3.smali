.class Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;
.super Ljava/lang/Object;
.source "SimpleItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;->createLabelDeleteDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

.field final synthetic val$label:Lcom/iliakplv/notes/notes/Label;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x671aa605a41be3aeL    # 4.637996916236215E188

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;Lcom/iliakplv/notes/notes/Label;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;->$jacocoInit()[Z

    move-result-object v0

    .line 142
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog;

    iput-object p2, p0, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;->val$label:Lcom/iliakplv/notes/notes/Label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    new-instance v1, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3$1;

    invoke-direct {v1, p0}, Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3$1;-><init>(Lcom/iliakplv/notes/gui/main/dialogs/SimpleItemDialog$3;)V

    invoke-static {v1}, Lcom/iliakplv/notes/NotesApplication;->executeInBackground(Ljava/lang/Runnable;)V

    .line 152
    aput-boolean v2, v0, v2

    return-void
.end method
