.class Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5b2ebc1890cbfb8bL    # -2.432398766237711E-131

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/AboutDialog$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;->access$000(Lcom/iliakplv/notes/gui/main/dialogs/AboutDialog;)V

    .line 46
    aput-boolean v2, v0, v2

    return-void
.end method
