.class Lme/writeily/dialog/ConfirmDialog$2;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/dialog/ConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/dialog/ConfirmDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/ConfirmDialog$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5edffbf18915098aL    # 1.0224280297927881E149

    const-string v2, "me/writeily/dialog/ConfirmDialog$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/ConfirmDialog$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/dialog/ConfirmDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/ConfirmDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iput-object p1, p0, Lme/writeily/dialog/ConfirmDialog$2;->this$0:Lme/writeily/dialog/ConfirmDialog;

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

    invoke-static {}, Lme/writeily/dialog/ConfirmDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    aput-boolean v1, v0, v1

    return-void
.end method
