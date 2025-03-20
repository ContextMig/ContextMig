.class Lme/writeily/dialog/FilesystemDialog$4;
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

    sget-object v0, Lme/writeily/dialog/FilesystemDialog$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1723ea4f69e34aafL    # -1.3121013091366171E197

    const-string v2, "me/writeily/dialog/FilesystemDialog$4"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/FilesystemDialog$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/dialog/FilesystemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$4;->$jacocoInit()[Z

    move-result-object v0

    .line 124
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog$4;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$4;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    aput-boolean v1, v0, v1

    return-void
.end method
