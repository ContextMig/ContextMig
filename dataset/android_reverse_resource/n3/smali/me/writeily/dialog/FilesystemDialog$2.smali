.class Lme/writeily/dialog/FilesystemDialog$2;
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

    sget-object v0, Lme/writeily/dialog/FilesystemDialog$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7772ed3fb7cb83f4L

    const-string v2, "me/writeily/dialog/FilesystemDialog$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/FilesystemDialog$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/dialog/FilesystemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog$2;->this$0:Lme/writeily/dialog/FilesystemDialog;

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

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog$2;->this$0:Lme/writeily/dialog/FilesystemDialog;

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$2;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v2}, Lme/writeily/dialog/FilesystemDialog;->access$000(Lme/writeily/dialog/FilesystemDialog;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/writeily/dialog/FilesystemDialog;->sendBroadcast(Ljava/lang/String;)V

    .line 107
    aput-boolean v3, v0, v3

    return-void
.end method
