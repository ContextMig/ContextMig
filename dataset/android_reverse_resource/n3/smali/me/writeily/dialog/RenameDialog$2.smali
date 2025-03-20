.class Lme/writeily/dialog/RenameDialog$2;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/dialog/RenameDialog;->setUpDialog(Ljava/io/File;Landroid/view/LayoutInflater;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/dialog/RenameDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/RenameDialog$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x11ddba8e4dbb68e7L

    const-string v2, "me/writeily/dialog/RenameDialog$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/RenameDialog$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/dialog/RenameDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/RenameDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iput-object p1, p0, Lme/writeily/dialog/RenameDialog$2;->this$0:Lme/writeily/dialog/RenameDialog;

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

    invoke-static {}, Lme/writeily/dialog/RenameDialog$2;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 66
    aput-boolean v1, v0, v1

    return-void
.end method
