.class Lme/writeily/dialog/FilesystemDialog$3;
.super Ljava/lang/Object;
.source "FilesystemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/dialog/FilesystemDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/dialog/FilesystemDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/FilesystemDialog$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4fc3bbafa51ae6ffL    # 1.7851113562061307E76

    const-string v2, "me/writeily/dialog/FilesystemDialog$3"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/FilesystemDialog$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/dialog/FilesystemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$3;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog$3;->this$0:Lme/writeily/dialog/FilesystemDialog;

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

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$3;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog$3;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v1}, Lme/writeily/dialog/FilesystemDialog;->access$100(Lme/writeily/dialog/FilesystemDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    aput-boolean v4, v0, v4

    .line 115
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog$3;->this$0:Lme/writeily/dialog/FilesystemDialog;

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$3;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v2}, Lme/writeily/dialog/FilesystemDialog;->access$100(Lme/writeily/dialog/FilesystemDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/dialog/FilesystemDialog;->sendBroadcast(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 119
    :goto_0
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog$3;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-virtual {v1}, Lme/writeily/dialog/FilesystemDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$3;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-virtual {v2}, Lme/writeily/dialog/FilesystemDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
