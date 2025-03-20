.class Lme/writeily/dialog/CreateFolderDialog$1;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/dialog/CreateFolderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/dialog/CreateFolderDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/CreateFolderDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3caa97c6ef3a1786L    # -2.4102275259015656E16

    const-string v2, "me/writeily/dialog/CreateFolderDialog$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/CreateFolderDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/dialog/CreateFolderDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/CreateFolderDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput-object p1, p0, Lme/writeily/dialog/CreateFolderDialog$1;->this$0:Lme/writeily/dialog/CreateFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/dialog/CreateFolderDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lme/writeily/dialog/CreateFolderDialog$1;->this$0:Lme/writeily/dialog/CreateFolderDialog;

    iget-object v2, p0, Lme/writeily/dialog/CreateFolderDialog$1;->this$0:Lme/writeily/dialog/CreateFolderDialog;

    invoke-static {v2}, Lme/writeily/dialog/CreateFolderDialog;->access$000(Lme/writeily/dialog/CreateFolderDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/dialog/CreateFolderDialog;->sendBroadcast(Ljava/lang/String;)V

    .line 61
    aput-boolean v3, v0, v3

    return-void
.end method
