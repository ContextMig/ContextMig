.class Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;
.super Ljava/lang/Object;
.source "VoiceSearchInstallDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4ddd6c07fc2875b4L    # 1.2393991651295396E67

    const-string v2, "com/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.google.android.voicesearch"

    aput-boolean v4, v0, v4

    .line 28
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 29
    iget-object v2, p0, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog$1;->this$0:Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;

    invoke-virtual {v2, v1}, Lcom/iliakplv/notes/gui/main/dialogs/VoiceSearchInstallDialog;->startActivity(Landroid/content/Intent;)V

    .line 30
    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    return-void
.end method
